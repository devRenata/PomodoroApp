import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int tempoTrabalho = 2;
 
  @observable
  int tempoDescanso = 1;

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
  }

  @action
  void decrementarTempoTrabalho() {
    tempoTrabalho--;
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
  }

  @action
  void decrementarTempoDescanso() {
    tempoDescanso--;
  }
}

// comando para gerar o arquivo automáticamente: 
// flutter pub run build_runner --help --> toda a lista de possibilidades
// flutter pub run build_runner watch --> vai monitorar todas as modificações