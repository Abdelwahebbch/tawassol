class Structure {
  final String name;
  final String shortDesc;
  final String longDescription;
  final String services;
  final String contact;
  final StructureInterest type;
  final OpportunityStatus status;

  Structure({
    required this.name,
    required this.shortDesc,
    required this.longDescription,
    required this.services,
    required this.contact,
    required this.type,
    required this.status,
  });
}

enum StructureInterest { service, product }

enum OpportunityStatus { finished, pending, canceled }
