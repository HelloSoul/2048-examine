package com.ipaynow.mgame;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

import com.ipaynow.plugin.api.IpaynowPlugin;
import com.ipaynow.plugin.manager.route.dto.ResponseParams;
import com.ipaynow.plugin.manager.route.impl.ReceivePayResult;
import com.ipaynow.plugin.utils.PreSignMessageUtil;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

public class PayActivity extends Activity implements ReceivePayResult{
    private RadioGroup rg;
    private Button btnPay;
    private TextView tvTime;
    private ImageView ivBack;
    Handler handler ;
    boolean isFirst;
    //TODO 签名接口，仅供测试时使用，结束请替换成自己的签名生成接口地址
    private static final String GETORDERMESSAGE_URL = "http://posp.ipaynow.cn/ZyPluginPaymentTest_PAY/api/pay2.php";
    //TODO 测试账号仅供开发者测试时使用
    private static final String appID = "1408709961320306";
    private static ProgressDialog progressDialog = null;
    private PreSignMessageUtil preSign = new PreSignMessageUtil();
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pay);
        IpaynowPlugin.getInstance().init(this);// 1.插件初始化
        isFirst = true;
        creatPayMessage(null);
        
        handler = new Handler(Looper.getMainLooper()){
            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                tvTime.setText("支付剩余时间："+msg.arg1+"分"+msg.arg2+"秒");
            }
            
        };
        initView();
    }
    private void initView() {
        rg = (RadioGroup) findViewById(R.id.rg);
        btnPay = (Button) findViewById(R.id.btn_pay);
        tvTime = (TextView) findViewById(R.id.tv_time);
        ivBack = (ImageView) findViewById(R.id.tv_back);
        RadioButton rb1 = (RadioButton) findViewById(R.id.rb1);
        RadioButton rb2 = (RadioButton) findViewById(R.id.rb2);
        Calendar cal = Calendar.getInstance();
        int month = cal.get(Calendar.MONTH) + 1;
        int year = cal.get(Calendar.YEAR);
        int dom = cal.get(Calendar.DAY_OF_MONTH);
        
        SpannableStringBuilder temp1=new SpannableStringBuilder();
        SpannableString temp111=new SpannableString("  QQ支付");
        temp111.setSpan(new AbsoluteSizeSpan(18,true), 0, temp111.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        SpannableString temp211=new SpannableString("（随机立减，最高免单）");
        temp211.setSpan(new ForegroundColorSpan(Color.parseColor("#D1111D")), 0, temp211.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        temp211.setSpan(new AbsoluteSizeSpan(12,true), 0, temp211.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        temp1.append(temp111).append(temp211);
        
        
        
        
        
//        rb1.setGravity(Gravity.TOP);
        if(year==2016&&month==7&&dom>17&&dom<25){
            rb1.setText(temp1);
//            rg.removeAllViews();
//            rg.addView(rb2);
//            rg.addView(rb1);
//            rb1.setText("  QQ支付");
        }else{
          rg.removeAllViews();
          rg.addView(rb2);
          rg.addView(rb1);
          rb1.setText("  QQ支付");
        } 
//            if(year==2016&&month>7){
//            rg.removeAllViews();
//            rg.addView(rb2);
//            rg.addView(rb1);
//            rb1.setText("  QQ支付");
//        }else if(year==2016&&month==7&&dom>24){
//            rg.removeAllViews();
//            rg.addView(rb2);
//            rg.addView(rb1);
//            rb1.setText("  QQ支付");
//        }
        btnPay.setOnClickListener(new OnClickListener() {
            
            @Override
            public void onClick(View v) {
                if(!checkNetInfo()){
                    return;
                }
                showProgressDialog();
                switch (rg.getCheckedRadioButtonId()) {
                case R.id.rb1:
                    preSign.payChannelType = "25"; // qq支付

                    break;
                case R.id.rb2:
                    preSign.payChannelType = "13"; // 微信wap版支付
                    break;
                default:
                    break;
                };
                //获取请求参数并调起支付
                GetMessage gm = new GetMessage();
                gm.execute(preSign.generatePreSignMessage());
                
            }
        });
        ivBack.setOnClickListener(new OnClickListener() {
            
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }
    /**
     * 聚合支付插件dialog默认的背景色为"#30000000"
     */
    private void showProgressDialog() {
        progressDialog = new ProgressDialog(PayActivity.this);
        progressDialog.setTitle("进度提示");
        progressDialog.setMessage("支付安全环境扫描");
        progressDialog.setCancelable(false);
        progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
        progressDialog.show();
    }
    private boolean checkNetInfo() {
        ConnectivityManager manager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo info = manager.getActiveNetworkInfo();
        if (info == null || !info.isConnected()) {
            Toast.makeText(PayActivity.this, "请检查网络连接状态", Toast.LENGTH_LONG).show();
            return false;
        }
        return true;
    }
    @Override
    protected void onResume() {
        super.onResume();
        if(isFirst)
        new Thread(){
            @Override
            public void run() {
                isFirst = false;
                super.run();
                
                for(int i = 14;i>=0;i--){
                    for(int j = 60;j>=0;j--){
                        Message obtain = Message.obtain();
                        obtain.arg1 = i;
                        obtain.arg2 = j;
                        handler.sendMessage(obtain);
                        try {
                            TimeUnit.MILLISECONDS.sleep(1000);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
                
            }
        }.start();
    }
   
    /**
     * 本地生成订单信息
     * @param mhtOrder
     */
    private void creatPayMessage(String... mhtOrder) {
        
        preSign.appId = appID;
        preSign.mhtOrderStartTime = new SimpleDateFormat("yyyyMMddHHmmss", Locale.CHINA).format(new Date());
        preSign.mhtOrderNo = preSign.mhtOrderStartTime;
        preSign.mhtOrderName = "2048";
        preSign.mhtOrderType = "01";
        preSign.mhtCurrencyType = "156";
        preSign.mhtOrderAmt = "100";
        preSign.mhtOrderDetail = "生命购买";
        preSign.mhtOrderTimeOut = "3600";
        preSign.notifyUrl = "http://localhost:10802/";
        preSign.mhtCharset = "UTF-8";
        preSign.mhtReserved = "test";
        preSign.consumerId = "456123";
        preSign.consumerName = "yuyang";
    }
    public class GetMessage extends AsyncTask<String, Integer, String> {
        protected String doInBackground(String... params) {
            String msg = params[0];
            // String needcheckmsg = HttpUtil.post(GETORDERMESSAGE_URL, msg);
            String needcheckmsg = "mhtSignature="
                    + Md5Util.md5(msg + "&" + Md5Util.md5("0nqIDgkOnNBD6qoqO5U68RO1fNqiaisg")) + "&mhtSignType=MD5";
            needcheckmsg = msg + "&" + needcheckmsg;
            return needcheckmsg;
        }

        protected void onPostExecute(String requestMessage) {
            progressDialog.dismiss();
            //设置支付结果回调接口，同时调起支付请求
            IpaynowPlugin.getInstance().setCallResultReceiver(PayActivity.this).pay(requestMessage);
        }
    }
    @Override
    public void onIpaynowTransResult(ResponseParams arg0) {
        String respCode = arg0.respCode;
        String errorCode = arg0.errorCode;
        String errorMsg = arg0.respMsg;
        StringBuilder temp = new StringBuilder();
        if (respCode.equals("00")) {
            temp.append("交易状态:成功");
            Intent data = new Intent();
            data.putExtra("respCode", respCode);
            data.putExtra("payCount", 10);
            setResult(100, data);
            finish();
            return ;
        } else if (respCode.equals("02")) {
            temp.append("交易状态:取消");
        } else if (respCode.equals("01")) {
            temp.append("交易状态:失败").append("\n").append("错误码:").append(errorCode).append("原因:" + errorMsg);
        } else if (respCode.equals("03")) {
            temp.append("交易状态:未知").append("\n").append("原因:" + errorMsg);
        } else {
            temp.append("respCode=").append(respCode).append("\n").append("respMsg=").append(errorMsg);
        }
        Toast.makeText(this, "onIpaynowTransResult:" + temp.toString(), Toast.LENGTH_LONG).show();
        
    }

}
