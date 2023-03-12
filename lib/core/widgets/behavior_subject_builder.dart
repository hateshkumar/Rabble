

import 'package:rabble/config/export.dart';
class BehaviorSubjectBuilder<T> extends StatelessWidget {
  final BehaviorSubject<T> subject;
  final AsyncWidgetBuilder<T> builder;
  final T? initialData;

  const BehaviorSubjectBuilder({
    Key? key,
    required this.subject,
    required this.builder,
    this.initialData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
      stream: subject.stream,
      initialData: subject.valueOrNull ?? initialData,
      builder: builder,
    );
  }
}

class CachedSubjectBuilder<T> extends StatelessWidget {
  final BehaviorSubject<T> subject;
  final AsyncWidgetBuilder<T> builder;
  final T? initialData;

  const CachedSubjectBuilder({
    Key? key,
    required this.subject,
    required this.builder,
    this.initialData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: subject.valueOrNull,
      future: subject.first,
      builder: builder,
    );
  }
}
