pragma Singleton
import QtQuick

QtObject {
    readonly property color clrBg: "{{colors.surface.default.hex}}"
    readonly property color clrText: "{{colors.on_surface.default.hex}}"
    readonly property color clrAccent: "{{colors.primary.default.hex}}"
    readonly property color clrSurface: "{{colors.surface_variant.default.hex}}"
    readonly property color clrOnAccent: "{{colors.on_primary.default.hex}}"
    readonly property color clrError: "{{colors.error.default.hex}}"

    readonly property color clrBgDim: "{{colors.surface_dim.default.hex}}"
    readonly property color clrBgBright: "{{colors.surface_bright.default.hex}}"
    readonly property color clrOnBg: "{{colors.on_background.default.hex}}"

    readonly property color clrSecondary: "{{colors.secondary.default.hex}}"
    readonly property color clrOnSecondary: "{{colors.on_secondary.default.hex}}"
    readonly property color clrSecondaryContainer: "{{colors.secondary_container.default.hex}}"
    readonly property color clrOnSecondaryContainer: "{{colors.on_secondary_container.default.hex}}"

    readonly property color clrTertiary: "{{colors.tertiary.default.hex}}"
    readonly property color clrOnTertiary: "{{colors.on_tertiary.default.hex}}"
    readonly property color clrTertiaryContainer: "{{colors.tertiary_container.default.hex}}"
    readonly property color clrOnTertiaryContainer: "{{colors.on_tertiary_container.default.hex}}"

    readonly property color clrOutline: "{{colors.outline.default.hex}}"
    readonly property color clrOutlineVariant: "{{colors.outline_variant.default.hex}}"
    readonly property color clrShadow: "{{colors.shadow.default.hex}}"
    readonly property color clrScrim: "{{colors.scrim.default.hex}}"

    readonly property color clrErrorContainer: "{{colors.error_container.default.hex}}"
    readonly property color clrOnError: "{{colors.on_error.default.hex}}"
    readonly property color clrOnErrorContainer: "{{colors.on_error_container.default.hex}}"

    readonly property int fontSize: 16
    readonly property string fontFamily: "SF Pro Display"
}