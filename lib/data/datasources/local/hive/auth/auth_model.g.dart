// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthAdapter extends TypeAdapter<AuthModel> {
  @override
  final int typeId = 0;

  @override
  AuthModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthModel(
      message: fields[0] as String?,
      categories: (fields[1] as List?)?.cast<int>(),
      status: fields[2] as int?,
      token: fields[3] as String?,
      isLogin: fields[4] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, AuthModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.categories)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.token)
      ..writeByte(4)
      ..write(obj.isLogin);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
