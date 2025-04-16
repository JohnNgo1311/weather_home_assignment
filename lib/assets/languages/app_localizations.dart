import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'languages/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// **'ErrorAtTheEnd'**
  String get errorAtTheEnd;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @saveResultSuccess.
  ///
  /// In en, this message translates to:
  /// **'Save result successfully'**
  String get saveResultSuccess;

  /// No description provided for @bloodPressure.
  ///
  /// In en, this message translates to:
  /// **'BLOOD PRESSURE'**
  String get bloodPressure;

  /// No description provided for @bloodSugar.
  ///
  /// In en, this message translates to:
  /// **'BLOOD SUGAR'**
  String get bloodSugar;

  /// No description provided for @bodyTemperature.
  ///
  /// In en, this message translates to:
  /// **'BODY TEMPERATURE'**
  String get bodyTemperature;

  /// No description provided for @spo2.
  ///
  /// In en, this message translates to:
  /// **'SPO2'**
  String get spo2;

  /// No description provided for @pulseOximeter.
  ///
  /// In en, this message translates to:
  /// **'Pulse oximeter'**
  String get pulseOximeter;

  /// No description provided for @changeLanguageSuccess.
  ///
  /// In en, this message translates to:
  /// **'Change language success'**
  String get changeLanguageSuccess;

  /// No description provided for @confirmNewPass.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get confirmNewPass;

  /// No description provided for @ifTheResultIs.
  ///
  /// In en, this message translates to:
  /// **'If the result is'**
  String get ifTheResultIs;

  /// No description provided for @pressTheButton.
  ///
  /// In en, this message translates to:
  /// **', press the nearby button'**
  String get pressTheButton;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @forgotPass.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPass;

  /// No description provided for @resultScreen.
  ///
  /// In en, this message translates to:
  /// **'Result screen'**
  String get resultScreen;

  /// No description provided for @camAccessError.
  ///
  /// In en, this message translates to:
  /// **'Camera access error. Please retry'**
  String get camAccessError;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @homeScreen.
  ///
  /// In en, this message translates to:
  /// **'Patient List'**
  String get homeScreen;

  /// No description provided for @hyperglycemia.
  ///
  /// In en, this message translates to:
  /// **' Hyperglycemia'**
  String get hyperglycemia;

  /// No description provided for @hyperthermia.
  ///
  /// In en, this message translates to:
  /// **'Hyperthermia'**
  String get hyperthermia;

  /// No description provided for @hypoglycemia.
  ///
  /// In en, this message translates to:
  /// **'Hypoglycemia'**
  String get hypoglycemia;

  /// No description provided for @hypotension.
  ///
  /// In en, this message translates to:
  /// **'hypotension'**
  String get hypotension;

  /// No description provided for @hypothermia.
  ///
  /// In en, this message translates to:
  /// **'Hypothermia'**
  String get hypothermia;

  /// No description provided for @goodSpo2.
  ///
  /// In en, this message translates to:
  /// **'Good blood oxygen saturation'**
  String get goodSpo2;

  /// No description provided for @averageSpo2.
  ///
  /// In en, this message translates to:
  /// **'Average blood oxygen saturation'**
  String get averageSpo2;

  /// No description provided for @lowSpo2.
  ///
  /// In en, this message translates to:
  /// **'Low blood oxygen saturation'**
  String get lowSpo2;

  /// No description provided for @emergencySpo2.
  ///
  /// In en, this message translates to:
  /// **'Sign of severe respiratory distress'**
  String get emergencySpo2;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @lastUpdate.
  ///
  /// In en, this message translates to:
  /// **'LAST READING'**
  String get lastUpdate;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logOut;

  /// No description provided for @areYouSureToLogOut.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Log Out?'**
  String get areYouSureToLogOut;

  /// No description provided for @messagesScreen.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messagesScreen;

  /// No description provided for @backToList.
  ///
  /// In en, this message translates to:
  /// **'Back to list'**
  String get backToList;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get newPassword;

  /// No description provided for @newPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Your New PhoneNumber'**
  String get newPhoneNumber;

  /// No description provided for @normalBP.
  ///
  /// In en, this message translates to:
  /// **'Normal blood pressure'**
  String get normalBP;

  /// No description provided for @normalBS.
  ///
  /// In en, this message translates to:
  /// **'Normal Blood Sugar'**
  String get normalBS;

  /// No description provided for @normalBT.
  ///
  /// In en, this message translates to:
  /// **'Normal body temperature'**
  String get normalBT;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @oldPassword.
  ///
  /// In en, this message translates to:
  /// **'Previous password'**
  String get oldPassword;

  /// No description provided for @oldPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Previous PhoneNumber'**
  String get oldPhoneNumber;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @patientIn4.
  ///
  /// In en, this message translates to:
  /// **'Patient Information'**
  String get patientIn4;

  /// No description provided for @unableToRecognizeReading.
  ///
  /// In en, this message translates to:
  /// **'Unable to recognize the captured reading, please take another photo!'**
  String get unableToRecognizeReading;

  /// No description provided for @patientList.
  ///
  /// In en, this message translates to:
  /// **'PATIENT LIST'**
  String get patientList;

  /// No description provided for @doctorList.
  ///
  /// In en, this message translates to:
  /// **'DOCTOR LIST'**
  String get doctorList;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'PhoneNumber'**
  String get phoneNumber;

  /// No description provided for @prediabetes.
  ///
  /// In en, this message translates to:
  /// **'Prediabetes'**
  String get prediabetes;

  /// No description provided for @prehypertension.
  ///
  /// In en, this message translates to:
  /// **'Prehypertension'**
  String get prehypertension;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchPatient.
  ///
  /// In en, this message translates to:
  /// **'Search patient'**
  String get searchPatient;

  /// No description provided for @searchDoctor.
  ///
  /// In en, this message translates to:
  /// **'Search doctor'**
  String get searchDoctor;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @selectTime.
  ///
  /// In en, this message translates to:
  /// **'Select Time'**
  String get selectTime;

  /// No description provided for @setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get setting;

  /// No description provided for @settingScreen.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get settingScreen;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @stage1hypertension.
  ///
  /// In en, this message translates to:
  /// **'Stage 1 hypertension'**
  String get stage1hypertension;

  /// No description provided for @stage2hypertension.
  ///
  /// In en, this message translates to:
  /// **'Stage 2 hypertension'**
  String get stage2hypertension;

  /// No description provided for @stage3hypertension.
  ///
  /// In en, this message translates to:
  /// **'Stage 2 hypertension'**
  String get stage3hypertension;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @copySuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Copy Successfully'**
  String get copySuccessfully;

  /// No description provided for @updatePassword.
  ///
  /// In en, this message translates to:
  /// **'Update Password'**
  String get updatePassword;

  /// No description provided for @updatePasswordSuccessfullly.
  ///
  /// In en, this message translates to:
  /// **'Update Password Successfullly'**
  String get updatePasswordSuccessfullly;

  /// No description provided for @updatePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Update Phone Number'**
  String get updatePhoneNumber;

  /// No description provided for @updatePhoneNumberSuccessfullly.
  ///
  /// In en, this message translates to:
  /// **'Update Phone Number Successfullly'**
  String get updatePhoneNumberSuccessfullly;

  /// No description provided for @veryhightbodytemperature.
  ///
  /// In en, this message translates to:
  /// **'Very high'**
  String get veryhightbodytemperature;

  /// No description provided for @watchHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get watchHistory;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @loadingData.
  ///
  /// In en, this message translates to:
  /// **'Loading data'**
  String get loadingData;

  /// No description provided for @dataLoaded.
  ///
  /// In en, this message translates to:
  /// **'Data Loaded Successfully'**
  String get dataLoaded;

  /// No description provided for @loadingError.
  ///
  /// In en, this message translates to:
  /// **'loading Data Error'**
  String get loadingError;

  /// No description provided for @selectEquip.
  ///
  /// In en, this message translates to:
  /// **'Select Equipment'**
  String get selectEquip;

  /// No description provided for @bloodGlucoseMeter.
  ///
  /// In en, this message translates to:
  /// **'Blood Glucose Meter'**
  String get bloodGlucoseMeter;

  /// No description provided for @thermometer.
  ///
  /// In en, this message translates to:
  /// **'Thermometer'**
  String get thermometer;

  /// No description provided for @bloodPressureMeter.
  ///
  /// In en, this message translates to:
  /// **'Blood Pressure Meter'**
  String get bloodPressureMeter;

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @uploadSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Upload Successfully'**
  String get uploadSuccessfully;

  /// No description provided for @editIndicatore.
  ///
  /// In en, this message translates to:
  /// **'Edit value'**
  String get editIndicatore;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get name;

  /// No description provided for @street.
  ///
  /// In en, this message translates to:
  /// **'Street'**
  String get street;

  /// No description provided for @ward.
  ///
  /// In en, this message translates to:
  /// **'ward'**
  String get ward;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @updateProfile.
  ///
  /// In en, this message translates to:
  /// **'Update profile'**
  String get updateProfile;

  /// No description provided for @district.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get district;

  /// No description provided for @updateProfileSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Update Profile Successfully'**
  String get updateProfileSuccessfully;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @cameraScreen.
  ///
  /// In en, this message translates to:
  /// **'Camera Screen'**
  String get cameraScreen;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @holdForFewSec.
  ///
  /// In en, this message translates to:
  /// **'Hold for a few seconds'**
  String get holdForFewSec;

  /// No description provided for @processSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Processed Successfully'**
  String get processSuccessfully;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @takePhotoAgain.
  ///
  /// In en, this message translates to:
  /// **'Take Photo Again'**
  String get takePhotoAgain;

  /// No description provided for @yourPhoto.
  ///
  /// In en, this message translates to:
  /// **'Your photo'**
  String get yourPhoto;

  /// No description provided for @errorWhileTakingPhoto.
  ///
  /// In en, this message translates to:
  /// **'Error occured while taking picture'**
  String get errorWhileTakingPhoto;

  /// No description provided for @photoLoading.
  ///
  /// In en, this message translates to:
  /// **'Photo loading'**
  String get photoLoading;

  /// No description provided for @verifying.
  ///
  /// In en, this message translates to:
  /// **'Verifying, please wait'**
  String get verifying;

  /// No description provided for @verifySuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Verify Successfully'**
  String get verifySuccessfully;

  /// No description provided for @addPatient.
  ///
  /// In en, this message translates to:
  /// **'Add patient'**
  String get addPatient;

  /// No description provided for @addDoctor.
  ///
  /// In en, this message translates to:
  /// **'Add doctor'**
  String get addDoctor;

  /// No description provided for @pleaseEnterYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Please fill in phone number and password'**
  String get pleaseEnterYourAccount;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @addPatientSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Add patient successfully'**
  String get addPatientSuccessfully;

  /// No description provided for @addDoctorSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Add doctor successfully'**
  String get addDoctorSuccessfully;

  /// No description provided for @pleaseEnterYourCurrentPassword.
  ///
  /// In en, this message translates to:
  /// **'Please fill in current password'**
  String get pleaseEnterYourCurrentPassword;

  /// No description provided for @pleaseEnterYourNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Please fill in new password'**
  String get pleaseEnterYourNewPassword;

  /// No description provided for @pleaseEnterCompleteInformation.
  ///
  /// In en, this message translates to:
  /// **'Please fill in the above information completely'**
  String get pleaseEnterCompleteInformation;

  /// No description provided for @pleaseEnterCompleteLogin.
  ///
  /// In en, this message translates to:
  /// **'Please fill in  username and password'**
  String get pleaseEnterCompleteLogin;

  /// No description provided for @uploadBloodPressureSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'You\'ve successfully updated  new blood pressure readings'**
  String get uploadBloodPressureSuccessfully;

  /// No description provided for @uploadBloodSugarSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'You\'ve successfully updated  new blood sugar readings'**
  String get uploadBloodSugarSuccessfully;

  /// No description provided for @uploadBodyTemperatureSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'You\'ve successfully updated  new body temperature readings'**
  String get uploadBodyTemperatureSuccessfully;

  /// No description provided for @uploadSpo2Successfully.
  ///
  /// In en, this message translates to:
  /// **'You\'ve successfully updated  new oxygen saturation levels'**
  String get uploadSpo2Successfully;

  /// No description provided for @updateProfileSuccessText.
  ///
  /// In en, this message translates to:
  /// **'You have successfully updated  personal information'**
  String get updateProfileSuccessText;

  /// No description provided for @addPatientSuccessText.
  ///
  /// In en, this message translates to:
  /// **'You have successfully added a new patient to the list'**
  String get addPatientSuccessText;

  /// No description provided for @addRelativeSuccessText.
  ///
  /// In en, this message translates to:
  /// **'You have successfully added a relative for this patient'**
  String get addRelativeSuccessText;

  /// No description provided for @addDoctorSuccessText.
  ///
  /// In en, this message translates to:
  /// **'You have successfully added a new doctor to the list'**
  String get addDoctorSuccessText;

  /// No description provided for @resetPassSuccessText.
  ///
  /// In en, this message translates to:
  /// **'Your password after being reset is:'**
  String get resetPassSuccessText;

  /// No description provided for @changePassSuccessText.
  ///
  /// In en, this message translates to:
  /// **'You have successfully changed password Please remember it for next logins!'**
  String get changePassSuccessText;

  /// No description provided for @tryLoggingAgain.
  ///
  /// In en, this message translates to:
  /// **'Please try logging again!'**
  String get tryLoggingAgain;

  /// No description provided for @pleaseEnterRelativeName.
  ///
  /// In en, this message translates to:
  /// **'Please fill in relatives name '**
  String get pleaseEnterRelativeName;

  /// No description provided for @pleaseEnterPatientName.
  ///
  /// In en, this message translates to:
  /// **'Please fill in patient\'s name'**
  String get pleaseEnterPatientName;

  /// No description provided for @pleaseEnterDoctorName.
  ///
  /// In en, this message translates to:
  /// **'Please fill in doctor\'s name'**
  String get pleaseEnterDoctorName;

  /// No description provided for @pleaseEnterRelativePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please fill in realtives phonenumber '**
  String get pleaseEnterRelativePhoneNumber;

  /// No description provided for @pleaseEnterPatientPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please fill in patient\'s phonenumber '**
  String get pleaseEnterPatientPhoneNumber;

  /// No description provided for @pleaseEnterDoctorPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please fill in doctor\'s phonenumber '**
  String get pleaseEnterDoctorPhoneNumber;

  /// No description provided for @noPatient.
  ///
  /// In en, this message translates to:
  /// **'There are no patients yet'**
  String get noPatient;

  /// No description provided for @noDoctor.
  ///
  /// In en, this message translates to:
  /// **'There are no doctors yet'**
  String get noDoctor;

  /// No description provided for @wrongSearchPatient.
  ///
  /// In en, this message translates to:
  /// **'No matching patients found'**
  String get wrongSearchPatient;

  /// No description provided for @wrongSearchDoctor.
  ///
  /// In en, this message translates to:
  /// **'No matching doctors found'**
  String get wrongSearchDoctor;

  /// No description provided for @cannotDeleteDoctor.
  ///
  /// In en, this message translates to:
  /// **'Can\'t delete the doctor still associated with patient accounts'**
  String get cannotDeleteDoctor;

  /// No description provided for @pleaseUpdateYourName.
  ///
  /// In en, this message translates to:
  /// **'Please update your name'**
  String get pleaseUpdateYourName;

  /// No description provided for @pleaseUpdateYourPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please update your phonenumber'**
  String get pleaseUpdateYourPhoneNumber;

  /// No description provided for @pleaseUpdateYourAge.
  ///
  /// In en, this message translates to:
  /// **'Please update your age'**
  String get pleaseUpdateYourAge;

  /// No description provided for @pleaseUpdateYourGender.
  ///
  /// In en, this message translates to:
  /// **'Please update your gender'**
  String get pleaseUpdateYourGender;

  /// No description provided for @pleaseUpdateYourAddress.
  ///
  /// In en, this message translates to:
  /// **'Please update your address'**
  String get pleaseUpdateYourAddress;

  /// No description provided for @pleaseUpdateYourWeight.
  ///
  /// In en, this message translates to:
  /// **'Please update your weight'**
  String get pleaseUpdateYourWeight;

  /// No description provided for @pleaseUpdateYourHeight.
  ///
  /// In en, this message translates to:
  /// **'Please update your height'**
  String get pleaseUpdateYourHeight;

  /// No description provided for @hasDoctorBefore.
  ///
  /// In en, this message translates to:
  /// **'This patient has been managed by another doctor'**
  String get hasDoctorBefore;

  /// No description provided for @updateIndicator.
  ///
  /// In en, this message translates to:
  /// **'Updated new indicator'**
  String get updateIndicator;

  /// No description provided for @updateBloodPressure.
  ///
  /// In en, this message translates to:
  /// **'Blood pressure update'**
  String get updateBloodPressure;

  /// No description provided for @updateBloodSugar.
  ///
  /// In en, this message translates to:
  /// **'Blood sugar update'**
  String get updateBloodSugar;

  /// No description provided for @updateBodytemperature.
  ///
  /// In en, this message translates to:
  /// **'Body temperature update'**
  String get updateBodytemperature;

  /// No description provided for @updateSpo2.
  ///
  /// In en, this message translates to:
  /// **'SpO2 update'**
  String get updateSpo2;

  /// No description provided for @duplicatedDoctorPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'This phone number has been already registered by another account'**
  String get duplicatedDoctorPhoneNumber;

  /// No description provided for @duplicatedRelationshipPAD.
  ///
  /// In en, this message translates to:
  /// **'The relationship between these entities has been existed'**
  String get duplicatedRelationshipPAD;

  /// No description provided for @noNotification.
  ///
  /// In en, this message translates to:
  /// **'No notifications have been received yet'**
  String get noNotification;

  /// No description provided for @wrongAccount.
  ///
  /// In en, this message translates to:
  /// **'Phone number or password is invalid. Try again!'**
  String get wrongAccount;

  /// No description provided for @wrongPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'This phone number hasn\'t been registered'**
  String get wrongPhoneNumber;

  /// No description provided for @invalidPhonenumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number, must be 10-11 characters long'**
  String get invalidPhonenumber;

  /// No description provided for @addRelativeSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Add relative successfully'**
  String get addRelativeSuccessfully;

  /// No description provided for @addRelative.
  ///
  /// In en, this message translates to:
  /// **'Add relative'**
  String get addRelative;

  /// No description provided for @relativeIn4.
  ///
  /// In en, this message translates to:
  /// **'Relative information'**
  String get relativeIn4;

  /// No description provided for @doctorIn4.
  ///
  /// In en, this message translates to:
  /// **'Doctor information'**
  String get doctorIn4;

  /// No description provided for @signUpSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Sign Up successfully'**
  String get signUpSuccessfully;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @uploadPhotoError.
  ///
  /// In en, this message translates to:
  /// **'Unable to load the image'**
  String get uploadPhotoError;

  /// No description provided for @titileForgetPass.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry! Enter the phone number you used to register in the box below to receive new password'**
  String get titileForgetPass;

  /// No description provided for @waitForSeconds.
  ///
  /// In en, this message translates to:
  /// **'Please wait for seconds'**
  String get waitForSeconds;

  /// No description provided for @relative.
  ///
  /// In en, this message translates to:
  /// **'PATIENT RELATIVES'**
  String get relative;

  /// No description provided for @oximeter.
  ///
  /// In en, this message translates to:
  /// **'PULSE OXIMETER'**
  String get oximeter;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'UserName'**
  String get account;

  /// No description provided for @unreadNotifications.
  ///
  /// In en, this message translates to:
  /// **'Unread Notifications'**
  String get unreadNotifications;

  /// No description provided for @deleteNotification.
  ///
  /// In en, this message translates to:
  /// **'Delete this notification?'**
  String get deleteNotification;

  /// No description provided for @hasJustUpdated.
  ///
  /// In en, this message translates to:
  /// **'has just updated'**
  String get hasJustUpdated;

  /// No description provided for @bloodSugarIndex.
  ///
  /// In en, this message translates to:
  /// **'blood sugar readings'**
  String get bloodSugarIndex;

  /// No description provided for @bloodPressureIndex.
  ///
  /// In en, this message translates to:
  /// **'blood pressure readings'**
  String get bloodPressureIndex;

  /// No description provided for @spo2Index.
  ///
  /// In en, this message translates to:
  /// **'Spo2 readings'**
  String get spo2Index;

  /// No description provided for @bodyTemperatureIndex.
  ///
  /// In en, this message translates to:
  /// **'body temperature readings'**
  String get bodyTemperatureIndex;

  /// No description provided for @patient.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get patient;

  /// No description provided for @his.
  ///
  /// In en, this message translates to:
  /// **'his'**
  String get his;

  /// No description provided for @her.
  ///
  /// In en, this message translates to:
  /// **'her'**
  String get her;

  /// No description provided for @goToPatientIn4Screen.
  ///
  /// In en, this message translates to:
  /// **'Patient infor screen'**
  String get goToPatientIn4Screen;

  /// No description provided for @goToNotificationScreen.
  ///
  /// In en, this message translates to:
  /// **'Notification screen'**
  String get goToNotificationScreen;

  /// No description provided for @endOfList.
  ///
  /// In en, this message translates to:
  /// **'No more data to load'**
  String get endOfList;

  /// No description provided for @noData.
  ///
  /// In en, this message translates to:
  /// **'No Data'**
  String get noData;

  /// No description provided for @wifiDisconnect.
  ///
  /// In en, this message translates to:
  /// **'No Wi-Fi connectivity'**
  String get wifiDisconnect;

  /// No description provided for @notUpdate.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get notUpdate;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'UserName'**
  String get userName;

  /// No description provided for @errorTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Error! Please try again.'**
  String get errorTryAgain;

  /// No description provided for @selectError.
  ///
  /// In en, this message translates to:
  /// **'Start Date must be before End Date'**
  String get selectError;

  /// No description provided for @exitAppTitle.
  ///
  /// In en, this message translates to:
  /// **'Exit App'**
  String get exitAppTitle;

  /// No description provided for @areYouSureToExitApp.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit the application?'**
  String get areYouSureToExitApp;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @phoneNumberCountError.
  ///
  /// In en, this message translates to:
  /// **'Incorrect phone number, must be 10-11 characters'**
  String get phoneNumberCountError;

  /// No description provided for @selectProduct.
  ///
  /// In en, this message translates to:
  /// **'Select your product'**
  String get selectProduct;

  /// No description provided for @deleteRelative.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove this relative?'**
  String get deleteRelative;

  /// No description provided for @deletePatient.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove this patient?'**
  String get deletePatient;

  /// No description provided for @deleteDoctor.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove this doctor?'**
  String get deleteDoctor;

  /// No description provided for @deleteRelativeWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete relative'**
  String get deleteRelativeWarningTitle;

  /// No description provided for @deletePatientWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete patient'**
  String get deletePatientWarningTitle;

  /// No description provided for @deleteDoctorWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete doctor'**
  String get deleteDoctorWarningTitle;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @deviceMatchImage.
  ///
  /// In en, this message translates to:
  /// **'Device must match the image'**
  String get deviceMatchImage;

  /// No description provided for @deletingPatient.
  ///
  /// In en, this message translates to:
  /// **'Deleting patient'**
  String get deletingPatient;

  /// No description provided for @deletingDoctoc.
  ///
  /// In en, this message translates to:
  /// **'Deleting doctor'**
  String get deletingDoctoc;

  /// No description provided for @deletingRelative.
  ///
  /// In en, this message translates to:
  /// **'Deleting relative'**
  String get deletingRelative;

  /// No description provided for @press.
  ///
  /// In en, this message translates to:
  /// **'Press '**
  String get press;

  /// No description provided for @loadAgain.
  ///
  /// In en, this message translates to:
  /// **'Load again'**
  String get loadAgain;

  /// No description provided for @toChangeTheDevice.
  ///
  /// In en, this message translates to:
  /// **' to exchange'**
  String get toChangeTheDevice;

  /// No description provided for @toCaptureTheResult.
  ///
  /// In en, this message translates to:
  /// **' to capture result'**
  String get toCaptureTheResult;

  /// No description provided for @overImagesCountPermission.
  ///
  /// In en, this message translates to:
  /// **'Exceeded today\'s photo limit'**
  String get overImagesCountPermission;

  /// No description provided for @pleaseEnterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter your phoneNumber'**
  String get pleaseEnterPhoneNumber;

  /// No description provided for @resetPasswordSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Reset password successfully'**
  String get resetPasswordSuccessfully;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get reset;

  /// No description provided for @deleteRelativeSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Delete relative successfully'**
  String get deleteRelativeSuccessfully;

  /// No description provided for @deletePatientSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Delete patient successfully'**
  String get deletePatientSuccessfully;

  /// No description provided for @deleteDoctorSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Delete doctor successfully'**
  String get deleteDoctorSuccessfully;

  /// No description provided for @deleteNotificationSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Delete notification successfully'**
  String get deleteNotificationSuccessfully;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @call.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get call;

  /// No description provided for @doNotHaveInformation.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have information'**
  String get doNotHaveInformation;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @currentPassWrong.
  ///
  /// In en, this message translates to:
  /// **'Wrong current password! Please try again'**
  String get currentPassWrong;

  /// No description provided for @duplicatedPatientPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'This phone number has been registered by another person'**
  String get duplicatedPatientPhoneNumber;

  /// No description provided for @duplicatedRelationshipPAR.
  ///
  /// In en, this message translates to:
  /// **'The relationship between these entities has been existed'**
  String get duplicatedRelationshipPAR;

  /// No description provided for @maximumRelativeCount.
  ///
  /// In en, this message translates to:
  /// **'The number of relatives belonging to this patient is already maxium'**
  String get maximumRelativeCount;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @permissionCameraWarning.
  ///
  /// In en, this message translates to:
  /// **'Please allow camera and microphone access'**
  String get permissionCameraWarning;

  /// No description provided for @permissionNotificationWarning.
  ///
  /// In en, this message translates to:
  /// **'Please grant permission to receive notifications'**
  String get permissionNotificationWarning;

  /// No description provided for @imagesTakenToday.
  ///
  /// In en, this message translates to:
  /// **'Remaining shots today:'**
  String get imagesTakenToday;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
