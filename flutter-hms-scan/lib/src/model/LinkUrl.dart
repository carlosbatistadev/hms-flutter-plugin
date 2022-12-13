/*
    Copyright 2020-2022. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

part of huawei_scan;

class LinkUrl {
  LinkUrl({
    this.linkvalue,
    this.theme,
  });

  String? linkvalue;
  String? theme;

  factory LinkUrl.fromJson(String str) {
    return LinkUrl.fromMap(json.decode(str));
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory LinkUrl.fromMap(Map<String, dynamic> json) {
    return LinkUrl(
      linkvalue: json['linkvalue'],
      theme: json['theme'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkvalue': linkvalue,
      'theme': theme,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    return other is LinkUrl &&
        other.linkvalue == linkvalue &&
        other.theme == theme;
  }

  @override
  int get hashCode {
    return hashValues(
      linkvalue,
      theme,
    );
  }
}
