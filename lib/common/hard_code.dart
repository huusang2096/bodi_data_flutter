import 'package:bodidatacms/model/audit/audit_session_record_dropdown.dart';
import 'package:bodidatacms/model/audit/sub_categories.dart';

String formatSize = ' x ';

class KeyId {
  static const String profileId = 'profile=%s';
  static const String styleId = 'style=%s';
  static const String sessionId = 'session=%s';
  static const String profileKey = 'profile';
  static const String styleKey = 'style';
  static const String sessionKey = 'session';
}

class AuditRecordDataDefault {
  final List<SubCategorie> listSubCategories = [
    SubCategorie(id: 1, name: 'Natural Waist'),
    SubCategorie(id: 2, name: 'Derived Waist'),
    SubCategorie(id: 3, name: 'Seat'),
    SubCategorie(id: 4, name: 'Inseam'),
  ];

  final List<OverallFit> listOverallFit = [
    OverallFit(id: 1, name: 'not auditted'),
    OverallFit(id: 2, name: 'Perfect'),
    OverallFit(id: 3, name: 'Great'),
    OverallFit(id: 4, name: 'Passable'),
    OverallFit(id: 5, name: 'Terrible'),
  ];

  final List<DataDropdownOverAndDetail> listDropdownOverAndDetail = [
    DataDropdownOverAndDetail(
      overallFit: OverallFit(id: 1, name: 'not auditted'),
      listDetailed: [],
    ),
    DataDropdownOverAndDetail(
      overallFit: OverallFit(id: 2, name: 'Perfect'),
      listDetailed: [],
    ),
    DataDropdownOverAndDetail(
      overallFit: OverallFit(id: 3, name: 'Great'),
      listDetailed: [
        Detailed(id: 1, name: 'A bit tight'),
        Detailed(id: 2, name: 'A bit loose'),
        Detailed(id: 3, name: 'Almost ideal'),
      ],
    ),
    DataDropdownOverAndDetail(
      overallFit: OverallFit(id: 4, name: 'Passable'),
      listDetailed: [
        Detailed(id: 5, name: 'Tight'),
        Detailed(id: 6, name: 'Loose'),
        Detailed(id: 7, name: 'Noticably tight'),
        Detailed(id: 8, name: 'Noticably loose'),
      ],
    ),
    DataDropdownOverAndDetail(
      overallFit: OverallFit(id: 5, name: 'Terrible'),
      listDetailed: [
        Detailed(id: 9, name: 'Too Tight - cannot put on'),
        Detailed(id: 10, name: 'Too Loose - cannot put on'),
        Detailed(id: 11, name: 'Uncomfortably tight'),
        Detailed(id: 12, name: 'Uncomfortably loose'),
      ],
    ),
  ];
}
