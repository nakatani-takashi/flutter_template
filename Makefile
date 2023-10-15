.PHONY: build
build:
	@dart format -o none --set-exit-if-changed $$(find ./lib ./test -name "*.dart" -not \( -name "*.*freezed.dart" -o -name "*.*g.dart" \) ) || exit 0
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: setup
setup:
	flutter clean
	flutter pub get

.PHONY: clean
clean:
	flutter pub run flutter_native_splash:remove
	flutter clean
	flutter pub get
    # flutter_launcher_iconsの生成コマンド
	flutter pub run flutter_launcher_icons
	# コード生成(build_runner)
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter pub run flutter_native_splash:create

.PHONY: update_splash
update_splash:
	flutter pub run flutter_native_splash:remove
	flutter pub run flutter_native_splash:create

.PHONY: riverpod_graph
riverpod_graph:
	dart pub global run riverpod_graph:riverpod_graph > graph.md