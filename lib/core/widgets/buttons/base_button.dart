

import 'package:rabble/config/export.dart';


enum RabbleBaseButtonIconPosition { LEFT, RIGHT }

// we only have 2 sizes only
enum ButtonSize {
  large,
  medium,
  small,
}

enum ButtonType {
  primary,
  secondary,
  tertiery,
}

enum ButtonDecoration {
  filled,
  outlined,
  less,
  // simple coloured text and nothing
  none,
}

enum ButtonState {
  enabled,
  disabled,

  /// same as busy state
  loading,
}

abstract class RabbleSuperBaseButton extends StatelessWidget {
  late final BehaviorSubject<ButtonState> state$;
  RabbleSuperBaseButton({
    Key? key,
    bool? enabled,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

  }) : super(
          key: key,
        ) {
    /// All subjest and streams (enabled, enabledSubject, disabledSubject,
    /// loadingSubject, enabledStream, disabledStream, state$) are mutually exclusive
    /// to each other means that only one should be non null
    /// if all subjects/streams are null, then [_enabled] will be set to true,
    /// means that default behaviour is enabled
    final bool? _enabled;

    bool allNull = (enabled == null) &&
        (enabledSubject == null) &&
        (disabledSubject == null) &&
        (loadingSubject == null) &&
        (state$ == null);
    if (allNull) {
      _enabled = true;
    } else {
      _enabled = enabled;
    }

    if (_enabled != null) {
      this.state$ = BehaviorSubject.seeded(
          _enabled ? ButtonState.enabled : ButtonState.disabled);
    } else if (state$ != null) {
      this.state$ = state$;
    }  else if (disabledSubject != null) {
      this.state$ = BehaviorSubject.seeded(
        disabledSubject.valueOrNull == true
            ? ButtonState.disabled
            : ButtonState.enabled,
      );
      this.state$.addStream(
            disabledSubject.map(
              (disabled) =>
                  (disabled) ? ButtonState.disabled : ButtonState.enabled,
            ),
          );
    } else if (enabledSubject != null) {
      this.state$ = BehaviorSubject.seeded(
        enabledSubject.valueOrNull == true
            ? ButtonState.enabled
            : ButtonState.disabled,
      );
      this.state$.addStream(
            enabledSubject.map(
              (enabled) =>
                  (enabled) ? ButtonState.enabled : ButtonState.disabled,
            ),
          );
    } else if (loadingSubject != null) {
      this.state$ = BehaviorSubject.seeded(
        loadingSubject.valueOrNull == true
            ? ButtonState.loading
            : ButtonState.enabled,
      );
      this.state$.addStream(
            loadingSubject.map(
              (loading) =>
                  (loading) ? ButtonState.loading : ButtonState.enabled,
            ),
          );
    } else {
      this.state$ = BehaviorSubject.seeded(ButtonState.enabled);
    }
  }
}

abstract class RabbleBaseButton extends RabbleSuperBaseButton {
  final ButtonSize buttonSize;
  final ButtonType type;
  final ButtonDecoration decoration;
  final bool shrinkWrap;
  final Widget? child;
  final Widget? icon;
  final String? label;
  //this is to override the label style
  final TextStyle? labelTextStyle;
  final VoidCallback? onPressed;
  final RabbleBaseButtonIconPosition? iconPosition;
  final Color? bgColor;

  RabbleBaseButton({
    required this.buttonSize,
    required this.type,
    required this.decoration,
    this.shrinkWrap = false,
    Key? key,
    this.child,
    this.icon,
    this.label,
    this.labelTextStyle,
    this.onPressed,
    this.iconPosition,
    this.bgColor,
    bool? enabled,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

    /// backward compatibility
    @deprecated Stream<bool>? enabledStream,

    /// backward compatibility
    @deprecated Stream<bool>? disabledStream,
  }) : super(
          key: key,
          enabled: enabled,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,

        ) {
    if (child != null && (icon != null || label != null)) {
      throw FlutterError("Either set child or text/icon.");
    }
  }

  VoidCallback? makeOnPressed(
    BuildContext context,
    ButtonState state,
  ) {
    if (state == ButtonState.disabled || onPressed == null)
      return null;
    else if (state == ButtonState.loading)
      return () {};
    else {
      return () {
        FocusScope.of(context).requestFocus(FocusNode());
        onPressed!();
      };
    }
  }

  TextStyle getTextTheme(BuildContext context) {
    final textTheme = RabbleTheme.of(context).textTheme;
    if (labelTextStyle != null) return labelTextStyle!;
    switch (buttonSize) {
      case ButtonSize.large:
        return textTheme.bodyLarge.copyWith(fontWeight: FontWeight.w600,color: APPColors.appIcons);
      case ButtonSize.medium:
        return textTheme.bodyMedium.copyWith(fontWeight: FontWeight.w600,color: APPColors.appIcons);
      case ButtonSize.small:
        return textTheme.bodyMedium.copyWith(fontWeight: FontWeight.w600,color: APPColors.appIcons);
      default:
        throw UnimplementedError(
            'Type [ButtonSize] is not implemented here yet');
    }
  }

  Widget makeContent(BuildContext context, ButtonState state) {
    if (state == ButtonState.loading) return _loadingIndicator(context);

    late List<Widget> effectiveChildren;
    if (label == null && icon == null) {
      effectiveChildren = <Widget>[child!];
    } else {
      effectiveChildren = <Widget>[
        if (iconPosition == RabbleBaseButtonIconPosition.RIGHT) ...[
          if (label != null) Text(label!),
          if (icon != null) ...[const SizedBox(width: 8), icon!],
        ] else ...[
          if (icon != null) ...[icon!, const SizedBox(width: 8)],
          if (label != null) Text(label!),
        ]
      ];
    }
    //Added row to make sure the child is expanded
    //That wont be necessary
    return Center(
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...effectiveChildren,
          ],
        ),
      ),
    );
  }

  Widget _loadingIndicator(BuildContext context) {
    final theme = getButtonStyle(context);
    return Center(
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: getTextTheme(context).fontSize,
              width: getTextTheme(context).fontSize,
              child: CircularProgressIndicator(
                color: theme.foregroundColor?.resolve(Set()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle getButtonStyle(BuildContext context);

  EdgeInsetsGeometry getButtonPadding(BuildContext context) {
    switch (buttonSize) {
      case ButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 16);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 12);
      case ButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 8);
      default:
        throw UnimplementedError(
            'Type [ButtonSize] is not implemented here yet');
    }
  }

  Size getButtonSize(BuildContext context) {
    switch (buttonSize) {
      case ButtonSize.large:
        return const Size.fromHeight(48);
      case ButtonSize.medium:
        return const Size.fromHeight(40);
      case ButtonSize.small:
        return const Size.fromHeight(32);

      default:
        throw UnimplementedError(
            'Type [ButtonSize] is not implemented here yet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BehaviorSubjectBuilder<ButtonState>(
      subject: state$,
      builder: (context, snapshot) {
        final ButtonState state = snapshot.data!;

        if (shrinkWrap) {
          return FittedBox(
            fit: BoxFit.fitWidth,
            child: SizedBox(
              height: getButtonSize(context).height,
              child: TextButton(
                onPressed: makeOnPressed(context, state),
                style: getButtonStyle(context),
                child: makeContent(context, state),
              ),
            ),
          );
        } else {
          return SizedBox(

            height: getButtonSize(context).height,
            child: TextButton(
              onPressed: makeOnPressed(context, state),
              style: getButtonStyle(context),
              child: makeContent(context, state),
            ),
          );
        }
      },
    );
  }
}
