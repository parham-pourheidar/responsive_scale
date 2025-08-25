# Changelog

All notable changes to this package will be documented in this file.

## [1.0.0] - 2025-08-25

### Added
- Initial release of the package.
- `ContextSizeExtensions` on `BuildContext`:
    - `w(num width)`: Scale width relative to screen width.
    - `h(num height)`: Scale height relative to screen height.
    - `s(num size)`: Scale font size or icons based on screen dimensions.
    - `symmetric({horizontal, vertical})`: Generate responsive symmetric padding.