// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntityAdapter extends TypeAdapter<BookEntity> {
  @override
  final int typeId = 0;

  @override
  BookEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntity(
      title: fields[0] as String,
      authors: (fields[1] as List).cast<String>(),
      publishedDate: fields[2] as String?,
      description: fields[3] as String?,
      pageCount: fields[4] as num?,
      price: fields[5] as num?,
      averageRating: fields[6] as num?,
      ratingsCount: fields[7] as num?,
      thumbnail: fields[8] as String?,
      categories: (fields[9] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, BookEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.authors)
      ..writeByte(2)
      ..write(obj.publishedDate)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.pageCount)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.averageRating)
      ..writeByte(7)
      ..write(obj.ratingsCount)
      ..writeByte(8)
      ..write(obj.thumbnail)
      ..writeByte(9)
      ..write(obj.categories);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
