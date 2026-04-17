class AgentProfileDto {
  const AgentProfileDto({
    required this.agentName,
    required this.agencyName,
  });

  final String agentName;
  final String agencyName;

  factory AgentProfileDto.fromJson(Map<String, dynamic> json) {
    return AgentProfileDto(
      agentName: json['agentName'] as String,
      agencyName: json['agencyName'] as String,
    );
  }
}
