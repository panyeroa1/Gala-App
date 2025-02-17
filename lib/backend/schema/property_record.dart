import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyRecord extends FirestoreRecord {
  PropertyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  bool hasLat() => _lat != null;

  // "lng" field.
  double? _lng;
  double get lng => _lng ?? 0.0;
  bool hasLng() => _lng != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  // "price_per_night" field.
  double? _pricePerNight;
  double get pricePerNight => _pricePerNight ?? 0.0;
  bool hasPricePerNight() => _pricePerNight != null;

  // "weekly_discount" field.
  double? _weeklyDiscount;
  double get weeklyDiscount => _weeklyDiscount ?? 0.0;
  bool hasWeeklyDiscount() => _weeklyDiscount != null;

  // "monthly_discount" field.
  double? _monthlyDiscount;
  double get monthlyDiscount => _monthlyDiscount ?? 0.0;
  bool hasMonthlyDiscount() => _monthlyDiscount != null;

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  bool hasAvailability() => _availability != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "Image4" field.
  String? _image4;
  String get image4 => _image4 ?? '';
  bool hasImage4() => _image4 != null;

  // "Image5" field.
  String? _image5;
  String get image5 => _image5 ?? '';
  bool hasImage5() => _image5 != null;

  // "Image6" field.
  String? _image6;
  String get image6 => _image6 ?? '';
  bool hasImage6() => _image6 != null;

  // "Image7" field.
  String? _image7;
  String get image7 => _image7 ?? '';
  bool hasImage7() => _image7 != null;

  // "Image8" field.
  String? _image8;
  String get image8 => _image8 ?? '';
  bool hasImage8() => _image8 != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _type = snapshotData['type'] as String?;
    _address = snapshotData['address'] as String?;
    _lat = castToType<double>(snapshotData['lat']);
    _lng = castToType<double>(snapshotData['lng']);
    _videoUrl = snapshotData['video_url'] as String?;
    _pricePerNight = castToType<double>(snapshotData['price_per_night']);
    _weeklyDiscount = castToType<double>(snapshotData['weekly_discount']);
    _monthlyDiscount = castToType<double>(snapshotData['monthly_discount']);
    _availability = snapshotData['availability'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userId = snapshotData['user_id'] as String?;
    _status = snapshotData['status'] as String?;
    _currency = snapshotData['currency'] as String?;
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _image3 = snapshotData['image3'] as String?;
    _image4 = snapshotData['Image4'] as String?;
    _image5 = snapshotData['Image5'] as String?;
    _image6 = snapshotData['Image6'] as String?;
    _image7 = snapshotData['Image7'] as String?;
    _image8 = snapshotData['Image8'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('property');

  static Stream<PropertyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertyRecord.fromSnapshot(s));

  static Future<PropertyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertyRecord.fromSnapshot(s));

  static PropertyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertyRecordData({
  String? id,
  String? name,
  String? description,
  String? type,
  String? address,
  double? lat,
  double? lng,
  String? videoUrl,
  double? pricePerNight,
  double? weeklyDiscount,
  double? monthlyDiscount,
  bool? availability,
  DateTime? createdTime,
  String? userId,
  String? status,
  String? currency,
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
  String? image6,
  String? image7,
  String? image8,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'type': type,
      'address': address,
      'lat': lat,
      'lng': lng,
      'video_url': videoUrl,
      'price_per_night': pricePerNight,
      'weekly_discount': weeklyDiscount,
      'monthly_discount': monthlyDiscount,
      'availability': availability,
      'created_time': createdTime,
      'user_id': userId,
      'status': status,
      'currency': currency,
      'image1': image1,
      'image2': image2,
      'image3': image3,
      'Image4': image4,
      'Image5': image5,
      'Image6': image6,
      'Image7': image7,
      'Image8': image8,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertyRecordDocumentEquality implements Equality<PropertyRecord> {
  const PropertyRecordDocumentEquality();

  @override
  bool equals(PropertyRecord? e1, PropertyRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.type == e2?.type &&
        e1?.address == e2?.address &&
        e1?.lat == e2?.lat &&
        e1?.lng == e2?.lng &&
        e1?.videoUrl == e2?.videoUrl &&
        e1?.pricePerNight == e2?.pricePerNight &&
        e1?.weeklyDiscount == e2?.weeklyDiscount &&
        e1?.monthlyDiscount == e2?.monthlyDiscount &&
        e1?.availability == e2?.availability &&
        e1?.createdTime == e2?.createdTime &&
        e1?.userId == e2?.userId &&
        e1?.status == e2?.status &&
        e1?.currency == e2?.currency &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.image4 == e2?.image4 &&
        e1?.image5 == e2?.image5 &&
        e1?.image6 == e2?.image6 &&
        e1?.image7 == e2?.image7 &&
        e1?.image8 == e2?.image8;
  }

  @override
  int hash(PropertyRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.description,
        e?.type,
        e?.address,
        e?.lat,
        e?.lng,
        e?.videoUrl,
        e?.pricePerNight,
        e?.weeklyDiscount,
        e?.monthlyDiscount,
        e?.availability,
        e?.createdTime,
        e?.userId,
        e?.status,
        e?.currency,
        e?.image1,
        e?.image2,
        e?.image3,
        e?.image4,
        e?.image5,
        e?.image6,
        e?.image7,
        e?.image8
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertyRecord;
}
