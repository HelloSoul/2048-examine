.class public Ltk/woppo/mgame/PayActivity;
.super Landroid/app/Activity;
.source "PayActivity.java"

# interfaces
.implements Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltk/woppo/mgame/PayActivity$GetMessage;
    }
.end annotation


# static fields
.field private static final GETORDERMESSAGE_URL:Ljava/lang/String; = "http://posp.ipaynow.cn/ZyPluginPaymentTest_PAY/api/pay2.php"

.field private static final appID:Ljava/lang/String; = "1408709961320306"

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private btnPay:Landroid/widget/Button;

.field handler:Landroid/os/Handler;

.field isFirst:Z

.field private ivBack:Landroid/widget/ImageView;

.field private preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private rg:Landroid/widget/RadioGroup;

.field private tvTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    .line 40
    return-void
.end method

.method static synthetic access$0()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Ltk/woppo/mgame/PayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->tvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Ltk/woppo/mgame/PayActivity;)Z
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ltk/woppo/mgame/PayActivity;->checkNetInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Ltk/woppo/mgame/PayActivity;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ltk/woppo/mgame/PayActivity;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$4(Ltk/woppo/mgame/PayActivity;)Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$5(Ltk/woppo/mgame/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-object v0
.end method

.method private checkNetInfo()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 159
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Ltk/woppo/mgame/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 160
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 161
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    :cond_0
    const-string v3, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u72b6\u6001"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 163
    const/4 v2, 0x0

    .line 165
    :cond_1
    return v2
.end method

.method private varargs creatPayMessage([Ljava/lang/String;)V
    .locals 4
    .param p1, "mhtOrder"    # [Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "1408709961320306"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v1, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    iget-object v1, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "2048"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "01"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "156"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "1000"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "\u751f\u547d\u8d2d\u4e70"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "3600"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "http://localhost:10802/"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "UTF-8"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "test"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "456123"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->consumerId:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "yuyang"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->consumerName:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private initView()V
    .locals 13

    .prologue
    .line 73
    const v9, 0x7f090004

    invoke-virtual {p0, v9}, Ltk/woppo/mgame/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    iput-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    .line 74
    const v9, 0x7f090007

    invoke-virtual {p0, v9}, Ltk/woppo/mgame/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Ltk/woppo/mgame/PayActivity;->btnPay:Landroid/widget/Button;

    .line 75
    const v9, 0x7f090002

    invoke-virtual {p0, v9}, Ltk/woppo/mgame/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Ltk/woppo/mgame/PayActivity;->tvTime:Landroid/widget/TextView;

    .line 76
    const v9, 0x7f090001

    invoke-virtual {p0, v9}, Ltk/woppo/mgame/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Ltk/woppo/mgame/PayActivity;->ivBack:Landroid/widget/ImageView;

    .line 77
    const v9, 0x7f090005

    invoke-virtual {p0, v9}, Ltk/woppo/mgame/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 78
    .local v3, "rb1":Landroid/widget/RadioButton;
    const v9, 0x7f090006

    invoke-virtual {p0, v9}, Ltk/woppo/mgame/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 79
    .local v4, "rb2":Landroid/widget/RadioButton;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 81
    .local v2, "month":I
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 82
    .local v8, "year":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 84
    .local v1, "dom":I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 85
    .local v5, "temp1":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/SpannableString;

    const-string v9, "  QQ\u652f\u4ed8"

    invoke-direct {v6, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 86
    .local v6, "temp111":Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v10, 0x12

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    new-instance v7, Landroid/text/SpannableString;

    const-string v9, "\uff08\u968f\u673a\u7acb\u51cf\uff0c\u6700\u9ad8\u514d\u5355\uff09"

    invoke-direct {v7, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    .local v7, "temp211":Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const-string v10, "#D1111D"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 89
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v10, 0xc

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 90
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 96
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/16 v9, 0x7e0

    if-le v8, v9, :cond_1

    .line 99
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 100
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 101
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 102
    const-string v9, "  QQ\u652f\u4ed8"

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    :goto_0
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->btnPay:Landroid/widget/Button;

    new-instance v10, Ltk/woppo/mgame/PayActivity$2;

    invoke-direct {v10, p0}, Ltk/woppo/mgame/PayActivity$2;-><init>(Ltk/woppo/mgame/PayActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v10, Ltk/woppo/mgame/PayActivity$3;

    invoke-direct {v10, p0}, Ltk/woppo/mgame/PayActivity$3;-><init>(Ltk/woppo/mgame/PayActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void

    .line 103
    :cond_1
    const/16 v9, 0x7e0

    if-ne v8, v9, :cond_2

    const/4 v9, 0x6

    if-le v2, v9, :cond_2

    .line 104
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 105
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 106
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 107
    const-string v9, "  QQ\u652f\u4ed8"

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_2
    const/16 v9, 0x7e0

    if-ne v8, v9, :cond_0

    const/4 v9, 0x6

    if-ne v2, v9, :cond_0

    const/16 v9, 0x18

    if-le v1, v9, :cond_0

    .line 109
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 110
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 111
    iget-object v9, p0, Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 112
    const-string v9, "  QQ\u652f\u4ed8"

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 152
    sget-object v0, Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8fdb\u5ea6\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    sget-object v0, Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u652f\u4ed8\u5b89\u5168\u73af\u5883\u626b\u63cf"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    sget-object v0, Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 155
    sget-object v0, Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 156
    sget-object v0, Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 157
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Ltk/woppo/mgame/PayActivity;->setContentView(I)V

    .line 58
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->getInstance()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->init(Landroid/content/Context;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltk/woppo/mgame/PayActivity;->isFirst:Z

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltk/woppo/mgame/PayActivity;->creatPayMessage([Ljava/lang/String;)V

    .line 62
    new-instance v0, Ltk/woppo/mgame/PayActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltk/woppo/mgame/PayActivity$1;-><init>(Ltk/woppo/mgame/PayActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Ltk/woppo/mgame/PayActivity;->handler:Landroid/os/Handler;

    .line 70
    invoke-direct {p0}, Ltk/woppo/mgame/PayActivity;->initView()V

    .line 71
    return-void
.end method

.method public onIpaynowTransResult(Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;)V
    .locals 8
    .param p1, "arg0"    # Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;

    .prologue
    .line 234
    iget-object v3, p1, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    .line 235
    .local v3, "respCode":Ljava/lang/String;
    iget-object v1, p1, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->errorCode:Ljava/lang/String;

    .line 236
    .local v1, "errorCode":Ljava/lang/String;
    iget-object v2, p1, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    .line 237
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v4, "temp":Ljava/lang/StringBuilder;
    const-string v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    const-string v5, "\u4ea4\u6613\u72b6\u6001:\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, "data":Landroid/content/Intent;
    const-string v5, "respCode"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v5, "payCount"

    const/16 v6, 0xa

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const/16 v5, 0x64

    invoke-virtual {p0, v5, v0}, Ltk/woppo/mgame/PayActivity;->setResult(ILandroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Ltk/woppo/mgame/PayActivity;->finish()V

    .line 257
    .end local v0    # "data":Landroid/content/Intent;
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v5, "02"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    const-string v5, "\u4ea4\u6613\u72b6\u6001:\u53d6\u6d88"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onIpaynowTransResult:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :cond_1
    const-string v5, "01"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 249
    const-string v5, "\u4ea4\u6613\u72b6\u6001:\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u9519\u8bef\u7801:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u539f\u56e0:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 250
    :cond_2
    const-string v5, "03"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    const-string v5, "\u4ea4\u6613\u72b6\u6001:\u672a\u77e5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u539f\u56e0:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 253
    :cond_3
    const-string v5, "respCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "respMsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    iget-boolean v0, p0, Ltk/woppo/mgame/PayActivity;->isFirst:Z

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ltk/woppo/mgame/PayActivity$4;

    invoke-direct {v0, p0}, Ltk/woppo/mgame/PayActivity$4;-><init>(Ltk/woppo/mgame/PayActivity;)V

    .line 192
    invoke-virtual {v0}, Ltk/woppo/mgame/PayActivity$4;->start()V

    .line 193
    :cond_0
    return-void
.end method
