class Note {
  ////id, account_type, title, description, currency, amount, taxes, insert_date, update_date
  int _id;
  String _accountType;
  String _title;
  String _description;
  String _currency;
  String _insertDate;
  String _updateDate;
  String _amount;
  String _taxes;

  Note(
    this._title,
    this._accountType,
    this._currency,
    this._description,
    this._insertDate,
    this._updateDate,
    this._amount,
    this._taxes,
  );

  Note.withId(
      this._id,
      this._title,
      this._accountType,
      this._amount,
      this._currency,
      this._description,
      this._insertDate,
      this._taxes,
      this._updateDate);

  int get id => _id;
  String get title => _title;
  String get accountType => _accountType;
  String get description => _description;
  String get currency => _currency;
  String get insertDate => _insertDate;
  String get updateDate => _updateDate;
  String get amount => _amount;
  String get taxes => _taxes;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set accountType(String newAccountType) {
    this._accountType = newAccountType;
  }

  set currency(String newCurrency) {
    this._currency = newCurrency;
  }

  set amount(String newAmount) {
    this._amount = newAmount;
  }

  set taxes(String newTaxes) {
    this._taxes = newTaxes;
  }

  set insertDate(String newInsertDate) {
    this._insertDate = newInsertDate;
  }

  set updateDate(String newUpdateDate) {
    this._updateDate = newUpdateDate;
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['accountType'] = _accountType;
    map['description'] = _description;
    map['currency'] = _currency;
    map['insertDate'] = _insertDate;
    map['updateDate'] = _updateDate;
    map['amount'] = _amount;
    map['taxes'] = _taxes;

    return map;
  }

  // Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._accountType = map['accountType'];
    this._description = map['description'];
    this._currency = map['currency'];
    this._insertDate = map['insertDate'];
    this._updateDate = map['updateDate'];
    this._amount = map['amount'];
    this._taxes = map['taxes'];
  }
}
