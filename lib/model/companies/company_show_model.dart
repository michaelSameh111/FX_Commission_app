class CompanyShowModel {
  String? status;
  Company? company;

  CompanyShowModel({this.status, this.company});

  CompanyShowModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    company =
    json['company'] != null ? new Company.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    return data;
  }
}

class Company {
  int? id;
  String? title;
  int? reviews;
  var rate;
  String? description;
  var brief;
  String? views;
  String? logo;
  String? video;
  String? slug;
  String? topCompany;
  String? affiliateUrl;
  String? commissionPercentage;
  String? commissionPerLot;
  String? spreadForEurUsd;
  String? maximumLeverage;
  String? minimumDeposit;
  String? minTradeSize;
  String? founded;
  Null? headquarters;
  Null? offices;
  Null? officesAr;
  String? regulators;
  String? accountCurrency;
  String? supportLanguages;
  String? supportOptions;
  String? fundingMethods;
  String? withdrawalMethods;
  String? islamicAccounts;
  String? support24Hours;
  String? governmentEnforcedSegregatedAccounts;
  String? acceptsUsClients;
  String? acceptsJpClients;
  String? tradingApi;
  String? managedAccountsFeatured;
  String? phoneTrading;
  String? metaTrader;
  String? trailingStops;
  String? scalping;
  String? hedging;
  String? goldSpread20;
  String? stopOut30Percent;
  Null? notes;
  Null? highlights;
  List<Null>? companyMetas;
  List<Null>? companyOffers;
  List<Null>? companyComments;
  List<Null>? companyReviews;

  Company(
      {this.id,
        this.title,
        this.reviews,
        this.rate,
        this.description,
        this.brief,
        this.views,
        this.logo,
        this.video,
        this.slug,
        this.topCompany,
        this.affiliateUrl,
        this.commissionPercentage,
        this.commissionPerLot,
        this.spreadForEurUsd,
        this.maximumLeverage,
        this.minimumDeposit,
        this.minTradeSize,
        this.founded,
        this.headquarters,
        this.offices,
        this.officesAr,
        this.regulators,
        this.accountCurrency,
        this.supportLanguages,
        this.supportOptions,
        this.fundingMethods,
        this.withdrawalMethods,
        this.islamicAccounts,
        this.support24Hours,
        this.governmentEnforcedSegregatedAccounts,
        this.acceptsUsClients,
        this.acceptsJpClients,
        this.tradingApi,
        this.managedAccountsFeatured,
        this.phoneTrading,
        this.metaTrader,
        this.trailingStops,
        this.scalping,
        this.hedging,
        this.goldSpread20,
        this.stopOut30Percent,
        this.notes,
        this.highlights,
        this.companyMetas,
        this.companyOffers,
        this.companyComments,
        this.companyReviews});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    reviews = json['reviews'];
    rate = json['rate'];
    description = json['description'];
    brief = json['brief'];
    views = json['views'];
    logo = json['logo'];
    video = json['video'];
    slug = json['slug'];
    topCompany = json['top_company'];
    affiliateUrl = json['affiliate_url'];
    commissionPercentage = json['commission_percentage'];
    commissionPerLot = json['commission_per_lot'];
    spreadForEurUsd = json['spread_for_eur_usd'];
    maximumLeverage = json['maximum_leverage'];
    minimumDeposit = json['minimum_deposit'];
    minTradeSize = json['min_trade_size'];
    founded = json['founded'];
    headquarters = json['headquarters'];
    offices = json['offices'];
    officesAr = json['offices_ar'];
    regulators = json['regulators'];
    accountCurrency = json['account_currency'];
    supportLanguages = json['support_languages'];
    supportOptions = json['support_options'];
    fundingMethods = json['funding_methods'];
    withdrawalMethods = json['withdrawal_methods'];
    islamicAccounts = json['islamic_accounts'];
    support24Hours = json['support_24_hours'];
    governmentEnforcedSegregatedAccounts =
    json['government_enforced_segregated_accounts'];
    acceptsUsClients = json['accepts_us_clients'];
    acceptsJpClients = json['accepts_jp_clients'];
    tradingApi = json['trading_api'];
    managedAccountsFeatured = json['managed_accounts_featured'];
    phoneTrading = json['phone_trading'];
    metaTrader = json['meta_trader'];
    trailingStops = json['trailing_stops'];
    scalping = json['scalping'];
    hedging = json['hedging'];
    goldSpread20 = json['gold_spread_20'];
    stopOut30Percent = json['stop_out_30_percent'];
    notes = json['notes'];
    highlights = json['highlights'];
    // if (json['company metas'] != null) {
    //   companyMetas = <Null>[];
    //   json['company metas'].forEach((v) {
    //     companyMetas!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['company offers'] != null) {
    //   companyOffers = <Null>[];
    //   json['company offers'].forEach((v) {
    //     companyOffers!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['company comments'] != null) {
    //   companyComments = <Null>[];
    //   json['company comments'].forEach((v) {
    //     companyComments!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['company reviews'] != null) {
    //   companyReviews = <Null>[];
    //   json['company reviews'].forEach((v) {
    //     companyReviews!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['reviews'] = this.reviews;
    data['rate'] = this.rate;
    data['description'] = this.description;
    data['brief'] = this.brief;
    data['views'] = this.views;
    data['logo'] = this.logo;
    data['video'] = this.video;
    data['slug'] = this.slug;
    data['top_company'] = this.topCompany;
    data['affiliate_url'] = this.affiliateUrl;
    data['commission_percentage'] = this.commissionPercentage;
    data['commission_per_lot'] = this.commissionPerLot;
    data['spread_for_eur_usd'] = this.spreadForEurUsd;
    data['maximum_leverage'] = this.maximumLeverage;
    data['minimum_deposit'] = this.minimumDeposit;
    data['min_trade_size'] = this.minTradeSize;
    data['founded'] = this.founded;
    data['headquarters'] = this.headquarters;
    data['offices'] = this.offices;
    data['offices_ar'] = this.officesAr;
    data['regulators'] = this.regulators;
    data['account_currency'] = this.accountCurrency;
    data['support_languages'] = this.supportLanguages;
    data['support_options'] = this.supportOptions;
    data['funding_methods'] = this.fundingMethods;
    data['withdrawal_methods'] = this.withdrawalMethods;
    data['islamic_accounts'] = this.islamicAccounts;
    data['support_24_hours'] = this.support24Hours;
    data['government_enforced_segregated_accounts'] =
        this.governmentEnforcedSegregatedAccounts;
    data['accepts_us_clients'] = this.acceptsUsClients;
    data['accepts_jp_clients'] = this.acceptsJpClients;
    data['trading_api'] = this.tradingApi;
    data['managed_accounts_featured'] = this.managedAccountsFeatured;
    data['phone_trading'] = this.phoneTrading;
    data['meta_trader'] = this.metaTrader;
    data['trailing_stops'] = this.trailingStops;
    data['scalping'] = this.scalping;
    data['hedging'] = this.hedging;
    data['gold_spread_20'] = this.goldSpread20;
    data['stop_out_30_percent'] = this.stopOut30Percent;
    data['notes'] = this.notes;
    data['highlights'] = this.highlights;
    // if (this.companyMetas != null) {
    //   data['company metas'] =
    //       this.companyMetas!.map((v) => v.toJson()).toList();
    // }
    // if (this.companyOffers != null) {
    //   data['company offers'] =
    //       this.companyOffers!.map((v) => v.toJson()).toList();
    // }
    // if (this.companyComments != null) {
    //   data['company comments'] =
    //       this.companyComments!.map((v) => v.toJson()).toList();
    // }
    // if (this.companyReviews != null) {
    //   data['company reviews'] =
    //       this.companyReviews!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}