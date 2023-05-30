class GetTimeSlotModel {
  int status;
  String message;
  List<TimeSlots> data;

  GetTimeSlotModel({this.status, this.message, this.data});

  GetTimeSlotModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<TimeSlots>();
      json['data'].forEach((v) {
        data.add(new TimeSlots.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TimeSlots {
  String startTime;
  String endTime;
  bool isEnabled;

  TimeSlots({this.startTime, this.endTime, this.isEnabled});

  TimeSlots.fromJson(Map<String, dynamic> json) {
    startTime = json['start_time'];
    endTime = json['end_time'];
    isEnabled = json['is_enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['is_enabled'] = this.isEnabled;
    return data;
  }
}