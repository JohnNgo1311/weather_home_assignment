
enum BlocStatusState { initial, loading, success, failure }
enum WeatherStatus { sunny, rainy, foggy, thunderStorm, undefine }
enum WeatherWithTimeStatus {
  morningSunny,
  morningRainy,
  morningThunderStorm,
  morningFoggy,
  nightRainy,
  nightFoggy,
  nightThunderStorm,
  undefine,
  nightClear
}
enum Splash { loGo }
const baseUrl = "https://api.openweathermap.org";
enum ToastStatus { loading, success, error }
