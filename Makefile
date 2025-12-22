run:
	flutter run
runner-build:
	flutter pub run build_runner build --delete-conflicting-outputs
clean:
	dart fix --apply