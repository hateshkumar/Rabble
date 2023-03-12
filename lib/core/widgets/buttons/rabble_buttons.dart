
import 'package:rabble/config/export.dart';


class RabbleButton extends RabbleBaseButton {
  RabbleButton.primaryOutlined({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.medium,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,
  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          onPressed: onPressed,
          enabled: enabled,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: ButtonType.primary,
          decoration: ButtonDecoration.outlined,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,
        );

  RabbleButton.secondaryOutlined({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.large,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          onPressed: onPressed,
          enabled: enabled,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: ButtonType.secondary,
          decoration: ButtonDecoration.outlined,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,
        );

  RabbleButton.primaryFilled({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.large,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          onPressed: onPressed,
          enabled: enabled,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: ButtonType.primary,
          decoration: ButtonDecoration.filled,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,

        );

  RabbleButton.secondaryFilled({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    Color? bgColor,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.large,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          onPressed: onPressed,
          enabled: enabled,
    bgColor: bgColor,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: ButtonType.secondary,
          decoration: ButtonDecoration.filled,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,

        );

  RabbleButton.tertiaryFilled({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.large,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          onPressed: onPressed,
          enabled: enabled,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: ButtonType.tertiery,
          decoration: ButtonDecoration.filled,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,

        );


  RabbleButton.tertiaryFilledColorLess({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.large,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

  }) : super(
    key: key,
    child: child,
    icon: icon,
    label: label,
    onPressed: onPressed,
    enabled: enabled,
    buttonSize: buttonSize,
    shrinkWrap: shrinkWrap,
    type: ButtonType.tertiery,
    decoration: ButtonDecoration.less,
    iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
    state$: state$,
    enabledSubject: enabledSubject,
    disabledSubject: disabledSubject,
    loadingSubject: loadingSubject,

  );

  RabbleButton.primaryBorderless({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.large,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,
  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          onPressed: onPressed,
          enabled: enabled,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: ButtonType.primary,
          decoration: ButtonDecoration.none,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,
        );

  RabbleButton.secondaryBorderless({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.large,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          onPressed: onPressed,
          enabled: enabled,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: ButtonType.secondary,
          decoration: ButtonDecoration.none,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,

        );

  RabbleButton.tertiaryBorderless({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    ButtonSize buttonSize = ButtonSize.large,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,
  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          onPressed: onPressed,
          enabled: enabled,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: ButtonType.primary,
          decoration: ButtonDecoration.none,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,
        );

  //This is used to create any custom button with different style
  RabbleButton.custom({
    Key? key,
    Widget? child,
    Widget? icon,
    String? label,
    TextStyle? labelTextStyle,
    VoidCallback? onPressed,
    bool? enabled,
    RabbleBaseButtonIconPosition? iconPosition,
    bool shrinkWrap = false,
    required ButtonSize buttonSize,
    required ButtonType type,
    required ButtonDecoration decoration,
    BehaviorSubject<ButtonState>? state$,
    BehaviorSubject<bool>? enabledSubject,
    BehaviorSubject<bool>? disabledSubject,
    BehaviorSubject<bool>? loadingSubject,

  }) : super(
          key: key,
          child: child,
          icon: icon,
          label: label,
          labelTextStyle: labelTextStyle,
          onPressed: onPressed,
          enabled: enabled,
          buttonSize: buttonSize,
          shrinkWrap: shrinkWrap,
          type: type,
          decoration: decoration,
          iconPosition: iconPosition ?? RabbleBaseButtonIconPosition.LEFT,
          state$: state$,
          enabledSubject: enabledSubject,
          disabledSubject: disabledSubject,
          loadingSubject: loadingSubject,

        );
  @override
  ButtonStyle getButtonStyle(BuildContext context) {
    switch (type) {
      case ButtonType.primary:
        switch (decoration) {
          case ButtonDecoration.outlined:
            return RabbleTheme.of(context)
                .buttonTheme
                .outlinedButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );
          case ButtonDecoration.filled:
            return RabbleTheme.of(context)
                .buttonTheme
                .filledButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );

          case ButtonDecoration.less:
            return  RabbleTheme.of(context)
                .secondaryButtonTheme
                .filledButtonStyle
                .copyWith(
              textStyle: MaterialStateProperty.all(getTextTheme(context)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  getButtonPadding(context)),
            );
          case ButtonDecoration.none:
            return RabbleTheme.of(context)
                .buttonTheme
                .textButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );
          default:
            throw UnimplementedError(
                'Type [ButtonDecoration] is not implemented here yet');
        }
      case ButtonType.secondary:
        switch (decoration) {
          case ButtonDecoration.outlined:
            return RabbleTheme.of(context)
                .secondaryButtonTheme
                .outlinedButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );
          case ButtonDecoration.less:
            return  RabbleTheme.of(context)
                .secondaryButtonTheme
                .filledButtonStyle
                .copyWith(
              textStyle: MaterialStateProperty.all(getTextTheme(context)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  getButtonPadding(context)),
            );
          case ButtonDecoration.filled:
            return RabbleTheme.of(context)
                .secondaryButtonTheme
                .filledButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );
          case ButtonDecoration.none:
            return RabbleTheme.of(context)
                .secondaryButtonTheme
                .textButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );
          default:
            throw UnimplementedError(
                'Type [ButtonDecoration] is not implemented here yet');
        }
      case ButtonType.tertiery:
        switch (decoration) {
          case ButtonDecoration.outlined:
            return RabbleTheme.of(context)
                .buttonTheme
                .outlinedButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );
          case ButtonDecoration.less:
            return RabbleTheme.of(context)
                .secondaryButtonTheme
                .filledButtonStyle
                .copyWith(
              textStyle: MaterialStateProperty.all(getTextTheme(context)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  getButtonPadding(context)),
            );
          case ButtonDecoration.filled:
            return RabbleTheme.of(context)
                .buttonTheme
                .filledButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),

                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );
          case ButtonDecoration.none:
            return RabbleTheme.of(context)
                .buttonTheme
                .textButtonStyle
                .copyWith(
                  textStyle: MaterialStateProperty.all(getTextTheme(context)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      getButtonPadding(context)),
                );
          default:
            throw UnimplementedError(
                'Type [ButtonDecoration] is not implemented here yet');
        }
      default:
        throw UnimplementedError(
            'Type [ButtonType] is not implemented here yet');
    }
  }
}
