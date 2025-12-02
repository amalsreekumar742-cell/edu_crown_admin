class RouteNames {
  static const String dashboard = '/dashboard';
  static const String tracking = '/livetracking';
  static const String lead = '/leadmanagement';
  static const String followup = '/followup';
  static const String activities = '/employeeactivities';
  static const String sales = '/saleexecutives';
  static const String students = '/students';
  static const String fee = '/feeoverview';
  static const String courses = '/courses';
  static const String contents = '/contents';
  static const String integration = '/integration';
  static const String alert = '/alert';
  static const String login = '/login';











  static const String recent = '/reports';
  

  static String getNameFromPath(String routePath) {
    if (routePath.startsWith('/')) {
      return routePath.substring(1);
    }
    return routePath;
  }


}
