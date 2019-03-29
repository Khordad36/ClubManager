library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:club_manager/entity/photograph.dart';
part 'serializers.g.dart';

@SerializersFor(const [Photograph])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();