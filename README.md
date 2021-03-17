# Master Detail project

POC of Master Detail flow with:
- simple named routing with parameters
- loading Image.network with local Image.asset placeholder
- parsing json collection object to data model
- scrollable ListView


# Json generation:
- add ```@JsonSerializable()```
- implement fromJson and toJson methods (lib/shared/model/fruit.dart)
- add ```part 'fruit.g.dart';```
- dont mind errors -> run generation tool below:
make use of the watcher to rebuild json on model change:
```flutter pub run build_runner watch```

ERROR: Generator cannot target libraries that have not been migrated to null-safety.

```
I found out that json_serializable >=4.0.0 depends on json_annotation >=4.0.0 <4.1.0 and the json_annotation: ^4.0.0 includes Null Safety but json_serializable: ^4.0.2 [ref](https://stackoverflow.com/questions/66477445/generator-cannot-target-libraries-that-have-not-been-migrated-to-null-safety)
```



![master_detail_flow][gif]

[gif]: https://github.com/Jan-Stepien/flutter-master-detail/blob/master/github_assets/master-detail-flow.gif "Gif of app"


