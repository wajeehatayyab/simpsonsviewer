class Mode {
  Mode({
      this.abstract, 
      this.abstractSource, 
      this.abstractText, 
      this.abstractURL, 
      this.answer, 
      this.answerType, 
      this.definition, 
      this.definitionSource, 
      this.definitionURL, 
      this.entity, 
      this.heading, 
      this.image, 
      this.imageHeight, 
      this.imageIsLogo, 
      this.imageWidth, 
      this.infobox, 
      this.redirect, 
      this.relatedTopics, 
      this.results, 
      this.type, 
      this.meta,});

  Mode.fromJson(dynamic json) {
    abstract = json['Abstract'];
    abstractSource = json['AbstractSource'];
    abstractText = json['AbstractText'];
    abstractURL = json['AbstractURL'];
    answer = json['Answer'];
    answerType = json['AnswerType'];
    definition = json['Definition'];
    definitionSource = json['DefinitionSource'];
    definitionURL = json['DefinitionURL'];
    entity = json['Entity'];
    heading = json['Heading'];
    image = json['Image'];
    imageHeight = json['ImageHeight'];
    imageIsLogo = json['ImageIsLogo'];
    imageWidth = json['ImageWidth'];
    infobox = json['Infobox'];
    redirect = json['Redirect'];
    if (json['RelatedTopics'] != null) {
      relatedTopics = [];
      json['RelatedTopics'].forEach((v) {
        relatedTopics?.add(RelatedTopics.fromJson(v));
      });
    }
    if (json['Results'] != null) {
      results = [];
      json['Results'].forEach((v) {
       // results?.add(Dynamic.fromJson(v));
      });
    }
    type = json['Type'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  String? abstract;
  String? abstractSource;
  String? abstractText;
  String? abstractURL;
  String? answer;
  String? answerType;
  String? definition;
  String? definitionSource;
  String? definitionURL;
  String? entity;
  String? heading;
  String? image;
  num? imageHeight;
  num? imageIsLogo;
  num? imageWidth;
  String? infobox;
  String? redirect;
  List<RelatedTopics>? relatedTopics;
  List<dynamic>? results;
  String? type;
  Meta? meta;
Mode copyWith({  String? abstract,
  String? abstractSource,
  String? abstractText,
  String? abstractURL,
  String? answer,
  String? answerType,
  String? definition,
  String? definitionSource,
  String? definitionURL,
  String? entity,
  String? heading,
  String? image,
  num? imageHeight,
  num? imageIsLogo,
  num? imageWidth,
  String? infobox,
  String? redirect,
  List<RelatedTopics>? relatedTopics,
  List<dynamic>? results,
  String? type,
  Meta? meta,
}) => Mode(  abstract: abstract ?? this.abstract,
  abstractSource: abstractSource ?? this.abstractSource,
  abstractText: abstractText ?? this.abstractText,
  abstractURL: abstractURL ?? this.abstractURL,
  answer: answer ?? this.answer,
  answerType: answerType ?? this.answerType,
  definition: definition ?? this.definition,
  definitionSource: definitionSource ?? this.definitionSource,
  definitionURL: definitionURL ?? this.definitionURL,
  entity: entity ?? this.entity,
  heading: heading ?? this.heading,
  image: image ?? this.image,
  imageHeight: imageHeight ?? this.imageHeight,
  imageIsLogo: imageIsLogo ?? this.imageIsLogo,
  imageWidth: imageWidth ?? this.imageWidth,
  infobox: infobox ?? this.infobox,
  redirect: redirect ?? this.redirect,
  relatedTopics: relatedTopics ?? this.relatedTopics,
  results: results ?? this.results,
  type: type ?? this.type,
  meta: meta ?? this.meta,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Abstract'] = abstract;
    map['AbstractSource'] = abstractSource;
    map['AbstractText'] = abstractText;
    map['AbstractURL'] = abstractURL;
    map['Answer'] = answer;
    map['AnswerType'] = answerType;
    map['Definition'] = definition;
    map['DefinitionSource'] = definitionSource;
    map['DefinitionURL'] = definitionURL;
    map['Entity'] = entity;
    map['Heading'] = heading;
    map['Image'] = image;
    map['ImageHeight'] = imageHeight;
    map['ImageIsLogo'] = imageIsLogo;
    map['ImageWidth'] = imageWidth;
    map['Infobox'] = infobox;
    map['Redirect'] = redirect;
    if (relatedTopics != null) {
      map['RelatedTopics'] = relatedTopics?.map((v) => v.toJson()).toList();
    }
    if (results != null) {
      map['Results'] = results?.map((v) => v.toJson()).toList();
    }
    map['Type'] = type;
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    return map;
  }

}

class Meta {
  Meta({
      this.attribution, 
      this.blockgroup, 
      this.createdDate, 
      this.description, 
      this.designer, 
      this.devDate, 
      this.devMilestone, 
      this.developer, 
      this.exampleQuery, 
      this.id, 
      this.isStackexchange, 
      this.jsCallbackName, 
      this.liveDate, 
      this.maintainer, 
      this.name, 
      this.perlModule, 
      this.producer, 
      this.productionState, 
      this.repo, 
      this.signalFrom, 
      this.srcDomain, 
      this.srcId, 
      this.srcName, 
      this.srcOptions, 
      this.srcUrl, 
      this.status, 
      this.tab, 
      this.topic, 
      this.unsafe,});

  Meta.fromJson(dynamic json) {
    attribution = json['attribution'];
    blockgroup = json['blockgroup'];
    createdDate = json['created_date'];
    description = json['description'];
    designer = json['designer'];
    devDate = json['dev_date'];
    devMilestone = json['dev_milestone'];
    if (json['developer'] != null) {
      developer = [];
      json['developer'].forEach((v) {
        developer?.add(Developer.fromJson(v));
      });
    }
    exampleQuery = json['example_query'];
    id = json['id'];
    isStackexchange = json['is_stackexchange'];
    jsCallbackName = json['js_callback_name'];
    liveDate = json['live_date'];
    maintainer = json['maintainer'] != null ? Maintainer.fromJson(json['maintainer']) : null;
    name = json['name'];
    perlModule = json['perl_module'];
    producer = json['producer'];
    productionState = json['production_state'];
    repo = json['repo'];
    signalFrom = json['signal_from'];
    srcDomain = json['src_domain'];
    srcId = json['src_id'];
    srcName = json['src_name'];
    srcOptions = json['src_options'] != null ? SrcOptions.fromJson(json['src_options']) : null;
    srcUrl = json['src_url'];
    status = json['status'];
    tab = json['tab'];
    topic = json['topic'] != null ? json['topic'].cast<String>() : [];
    unsafe = json['unsafe'];
  }
  dynamic attribution;
  dynamic blockgroup;
  dynamic createdDate;
  String? description;
  dynamic designer;
  dynamic devDate;
  String? devMilestone;
  List<Developer>? developer;
  String? exampleQuery;
  String? id;
  dynamic isStackexchange;
  String? jsCallbackName;
  dynamic liveDate;
  Maintainer? maintainer;
  String? name;
  String? perlModule;
  dynamic producer;
  String? productionState;
  String? repo;
  String? signalFrom;
  String? srcDomain;
  num? srcId;
  String? srcName;
  SrcOptions? srcOptions;
  dynamic srcUrl;
  String? status;
  String? tab;
  List<String>? topic;
  num? unsafe;
Meta copyWith({  dynamic attribution,
  dynamic blockgroup,
  dynamic createdDate,
  String? description,
  dynamic designer,
  dynamic devDate,
  String? devMilestone,
  List<Developer>? developer,
  String? exampleQuery,
  String? id,
  dynamic isStackexchange,
  String? jsCallbackName,
  dynamic liveDate,
  Maintainer? maintainer,
  String? name,
  String? perlModule,
  dynamic producer,
  String? productionState,
  String? repo,
  String? signalFrom,
  String? srcDomain,
  num? srcId,
  String? srcName,
  SrcOptions? srcOptions,
  dynamic srcUrl,
  String? status,
  String? tab,
  List<String>? topic,
  num? unsafe,
}) => Meta(  attribution: attribution ?? this.attribution,
  blockgroup: blockgroup ?? this.blockgroup,
  createdDate: createdDate ?? this.createdDate,
  description: description ?? this.description,
  designer: designer ?? this.designer,
  devDate: devDate ?? this.devDate,
  devMilestone: devMilestone ?? this.devMilestone,
  developer: developer ?? this.developer,
  exampleQuery: exampleQuery ?? this.exampleQuery,
  id: id ?? this.id,
  isStackexchange: isStackexchange ?? this.isStackexchange,
  jsCallbackName: jsCallbackName ?? this.jsCallbackName,
  liveDate: liveDate ?? this.liveDate,
  maintainer: maintainer ?? this.maintainer,
  name: name ?? this.name,
  perlModule: perlModule ?? this.perlModule,
  producer: producer ?? this.producer,
  productionState: productionState ?? this.productionState,
  repo: repo ?? this.repo,
  signalFrom: signalFrom ?? this.signalFrom,
  srcDomain: srcDomain ?? this.srcDomain,
  srcId: srcId ?? this.srcId,
  srcName: srcName ?? this.srcName,
  srcOptions: srcOptions ?? this.srcOptions,
  srcUrl: srcUrl ?? this.srcUrl,
  status: status ?? this.status,
  tab: tab ?? this.tab,
  topic: topic ?? this.topic,
  unsafe: unsafe ?? this.unsafe,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['attribution'] = attribution;
    map['blockgroup'] = blockgroup;
    map['created_date'] = createdDate;
    map['description'] = description;
    map['designer'] = designer;
    map['dev_date'] = devDate;
    map['dev_milestone'] = devMilestone;
    if (developer != null) {
      map['developer'] = developer?.map((v) => v.toJson()).toList();
    }
    map['example_query'] = exampleQuery;
    map['id'] = id;
    map['is_stackexchange'] = isStackexchange;
    map['js_callback_name'] = jsCallbackName;
    map['live_date'] = liveDate;
    if (maintainer != null) {
      map['maintainer'] = maintainer?.toJson();
    }
    map['name'] = name;
    map['perl_module'] = perlModule;
    map['producer'] = producer;
    map['production_state'] = productionState;
    map['repo'] = repo;
    map['signal_from'] = signalFrom;
    map['src_domain'] = srcDomain;
    map['src_id'] = srcId;
    map['src_name'] = srcName;
    if (srcOptions != null) {
      map['src_options'] = srcOptions?.toJson();
    }
    map['src_url'] = srcUrl;
    map['status'] = status;
    map['tab'] = tab;
    map['topic'] = topic;
    map['unsafe'] = unsafe;
    return map;
  }

}

class SrcOptions {
  SrcOptions({
      this.directory, 
      this.isFanon, 
      this.isMediawiki, 
      this.isWikipedia, 
      this.language, 
      this.minAbstractLength, 
      this.skipAbstract, 
      this.skipAbstractParen, 
      this.skipEnd, 
      this.skipIcon, 
      this.skipImageName, 
      this.skipQr, 
      this.sourceSkip, 
      this.srcInfo,});

  SrcOptions.fromJson(dynamic json) {
    directory = json['directory'];
    isFanon = json['is_fanon'];
    isMediawiki = json['is_mediawiki'];
    isWikipedia = json['is_wikipedia'];
    language = json['language'];
    minAbstractLength = json['min_abstract_length'];
    skipAbstract = json['skip_abstract'];
    skipAbstractParen = json['skip_abstract_paren'];
    skipEnd = json['skip_end'];
    skipIcon = json['skip_icon'];
    skipImageName = json['skip_image_name'];
    skipQr = json['skip_qr'];
    sourceSkip = json['source_skip'];
    srcInfo = json['src_info'];
  }
  String? directory;
  num? isFanon;
  num? isMediawiki;
  num? isWikipedia;
  String? language;
  String? minAbstractLength;
  num? skipAbstract;
  num? skipAbstractParen;
  String? skipEnd;
  num? skipIcon;
  num? skipImageName;
  String? skipQr;
  String? sourceSkip;
  String? srcInfo;
SrcOptions copyWith({  String? directory,
  num? isFanon,
  num? isMediawiki,
  num? isWikipedia,
  String? language,
  String? minAbstractLength,
  num? skipAbstract,
  num? skipAbstractParen,
  String? skipEnd,
  num? skipIcon,
  num? skipImageName,
  String? skipQr,
  String? sourceSkip,
  String? srcInfo,
}) => SrcOptions(  directory: directory ?? this.directory,
  isFanon: isFanon ?? this.isFanon,
  isMediawiki: isMediawiki ?? this.isMediawiki,
  isWikipedia: isWikipedia ?? this.isWikipedia,
  language: language ?? this.language,
  minAbstractLength: minAbstractLength ?? this.minAbstractLength,
  skipAbstract: skipAbstract ?? this.skipAbstract,
  skipAbstractParen: skipAbstractParen ?? this.skipAbstractParen,
  skipEnd: skipEnd ?? this.skipEnd,
  skipIcon: skipIcon ?? this.skipIcon,
  skipImageName: skipImageName ?? this.skipImageName,
  skipQr: skipQr ?? this.skipQr,
  sourceSkip: sourceSkip ?? this.sourceSkip,
  srcInfo: srcInfo ?? this.srcInfo,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['directory'] = directory;
    map['is_fanon'] = isFanon;
    map['is_mediawiki'] = isMediawiki;
    map['is_wikipedia'] = isWikipedia;
    map['language'] = language;
    map['min_abstract_length'] = minAbstractLength;
    map['skip_abstract'] = skipAbstract;
    map['skip_abstract_paren'] = skipAbstractParen;
    map['skip_end'] = skipEnd;
    map['skip_icon'] = skipIcon;
    map['skip_image_name'] = skipImageName;
    map['skip_qr'] = skipQr;
    map['source_skip'] = sourceSkip;
    map['src_info'] = srcInfo;
    return map;
  }

}

class Maintainer {
  Maintainer({
      this.github,});

  Maintainer.fromJson(dynamic json) {
    github = json['github'];
  }
  String? github;
Maintainer copyWith({  String? github,
}) => Maintainer(  github: github ?? this.github,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['github'] = github;
    return map;
  }

}

class Developer {
  Developer({
      this.name, 
      this.type, 
      this.url,});

  Developer.fromJson(dynamic json) {
    name = json['name'];
    type = json['type'];
    url = json['url'];
  }
  String? name;
  String? type;
  String? url;
Developer copyWith({  String? name,
  String? type,
  String? url,
}) => Developer(  name: name ?? this.name,
  type: type ?? this.type,
  url: url ?? this.url,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    map['url'] = url;
    return map;
  }

}

class RelatedTopics {
  RelatedTopics({
      this.firstURL, 
      this.icon, 
      this.result, 
      this.text,});

  RelatedTopics.fromJson(dynamic json) {
    firstURL = json['FirstURL'];
    icon = json['Icon'] != null ? Icon.fromJson(json['Icon']) : null;
    result = json['Result'];
    text = json['Text'];
  }
  String? firstURL;
  Icon? icon;
  String? result;
  String? text;
RelatedTopics copyWith({  String? firstURL,
  Icon? icon,
  String? result,
  String? text,
}) => RelatedTopics(  firstURL: firstURL ?? this.firstURL,
  icon: icon ?? this.icon,
  result: result ?? this.result,
  text: text ?? this.text,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['FirstURL'] = firstURL;
    if (icon != null) {
      map['Icon'] = icon?.toJson();
    }
    map['Result'] = result;
    map['Text'] = text;
    return map;
  }

}

class Icon {
  Icon({
      this.height, 
      this.url, 
      this.width,});

  Icon.fromJson(dynamic json) {
    height = json['Height'];
    url = json['URL'];
    width = json['Width'];
  }
  String? height;
  String? url;
  String? width;
Icon copyWith({  String? height,
  String? url,
  String? width,
}) => Icon(  height: height ?? this.height,
  url: url ?? this.url,
  width: width ?? this.width,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Height'] = height;
    map['URL'] = url;
    map['Width'] = width;
    return map;
  }

}