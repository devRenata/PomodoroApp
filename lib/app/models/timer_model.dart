class TimerModel {
  bool timer_started;
  int minutes;
  int seconds;
  int working_time;
  int pause_time;
  int type_of_time;

  TimerModel(
    this.timer_started,
    this.minutes,
    this.seconds,
    this.working_time,
    this.pause_time,
    this.type_of_time,
  );
}