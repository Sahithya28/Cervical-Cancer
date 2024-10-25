import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'WelcomePage.dart';
import 'DetailsScreen.dart';
import 'LoginScreen.dart';
import 'DocLoginScreen.dart';
import 'DashboardScreen.dart';
import 'PatientDetailsScreen.dart';
import 'NewCategoryScreen.dart';
import 'RiskFactorsScreen.dart';
import 'ToolsScreen.dart';
import 'SymptomsScreen.dart' as Symptoms; // Aliasing SymptomsScreen
import 'TkmScreen.dart';
import 'HPVScreen.dart';
import 'AgeRFScreen.dart';
import 'SexualHistoryScreen.dart';
import 'SmokingScreen.dart';
import 'ImmuneScreen.dart';
import 'LTBCScreen.dart';
import 'ChlamydiaScreen.dart';
import 'LowfibreScreen.dart';
import 'EconomicScreen.dart';
import 'FamilyhistoryScreen.dart';
import 'HPVTestScreen.dart';
import 'PAPTestScreen.dart';
import 'PAPtest21Screen.dart';
import 'PAPtest21_29Screen.dart';
import 'PAPtest30_65Screen.dart';
import 'PAPtest65Screen.dart';
import 'HPVVaccineScreen.dart';
import 'HPV16_18Screen.dart';
import 'HPVgenotypesScreen.dart';
import 'HPVNegativeScreen.dart';

// Import the new screens
import 'VaginalBleedingScreen.dart';
import 'VaginalDischargeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/welcomePage': (context) => const WelcomePage(),
        '/detailsScreen': (context) => const DetailsScreen(),
        '/loginScreen': (context) => const LoginScreen(),
        '/docLoginScreen': (context) => const DocLoginScreen(),
        '/DashboardScreen': (context) => DashboardScreen(username: 'Username'),
        '/patientDetailsScreen': (context) => const PatientDetailsScreen(),
        '/newCategoryScreen': (context) => const NewCategoryScreen(),
        '/riskFactorsScreen': (context) => const RiskFactorsScreen(),
        '/toolsScreen': (context) => const ToolsScreen(),
        '/symptomsScreen': (context) => const Symptoms.SymptomsScreen(), // Access via alias
        '/tkmScreen': (context) => const TkmScreen(),
        '/ageRFScreen': (context) => const AgeRFScreen(),
        '/sexualHistoryScreen': (context) => const SexualHistoryScreen(),
        '/smokingScreen': (context) => const SmokingScreen(),
        '/immuneScreen': (context) => const ImmuneScreen(),
        '/hpvScreen': (context) => const HPVScreen(),
        '/ltbcScreen': (context) => const LTBCScreen(),
        '/chlamydiaScreen': (context) => const ChlamydiaScreen(),
        '/lowfibreScreen': (context) => const LowfibreScreen(),
        '/economicScreen': (context) => const EconomicScreen(),
        '/familyhistoryScreen': (context) => const FamilyhistoryScreen(),
        '/hpvTestScreen': (context) => const HPVTestScreen(),
        '/papTestScreen': (context) => const PAPTestScreen(),
        '/paptest21Screen': (context) => const PAPtest21Screen(),
        '/paptest21_29Screen': (context) => const PAPtest21_29Screen(),
        '/paptest30_65Screen': (context) => const PAPtest30_65Screen(),
        '/paptest65Screen': (context) => const PAPtest65Screen(),
        '/hpvVaccineScreen': (context) => const HPVVaccineScreen(),
        '/hpv16_18Screen': (context) => const HPV16_18Screen(),
        '/hpvgenotypesScreen': (context) => const HPVgenotypesScreen(),
        '/hpvNegativeScreen': (context) => const HPVNegativeScreen(),
        // Add routes for the new screens
        '/vaginalBleedingScreen': (context) => const VaginalBleedingScreen(),
        '/vaginalDischargeScreen': (context) => const VaginalDischargeScreen(),
      },
    );
  }
}
