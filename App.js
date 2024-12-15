import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import React from 'react';

// Import all your existing screen components
import AdditionalContentScreen from './screens/AdditionalContentScreen'; 
import AfterCareColScreen from './screens/AfterCareColScreen';
import Age21Screen from './screens/Age21Screen';
import Age21to34Screen from './screens/Age21to34Screen';
import Age35Screen from './screens/Age35Screen';
import AgeBetween21To34Screen from './screens/AgeBetween21To34Screen'; 
import AgeLessThan21Screen from './screens/AgeLessThan21Screen'; 
import AgeMoreThan35 from './screens/AgeMoreThan35';
import AgeRFScreen from './screens/AgeRFScreen';
import AttendedQuestionsScreen from './screens/AttendedQuestionsScreen';
import BiopsyColScreen from './screens/BiopsyColScreen';
import ChlamydiaScreen from './screens/ChlamydiaScreen';
import Common2Screen from './screens/Common2Screen';
import CommonScreen from './screens/CommonScreen';
import DashboardScreen from './screens/DashboardScreen';
import DetailsScreen from './screens/DetailsScreen';
import DocSearchScreen from './screens/DocSearchScreen';
import DocloginScreen from './screens/DocloginScreen';
import DocsignScreen from './screens/DocsignScreen';
import EconomicScreen from './screens/EconomicScreen';
import FamilyhistoryScreen from './screens/FamilyhistoryScreen';
import HPV16_18Screen from './screens/HPV16_18Screen';
import HPVNegativeScreen from './screens/HPVNegativeScreen';
import HPVScreen from './screens/HPVScreen';
import HPVgenotypesScreen from './screens/HPVgenotypesScreen';
import HPVtest from './screens/HPVtest';
import HPVvaccineScreen from './screens/HPVvaccineScreen';
import HomeScreen from './screens/HomeScreen';
import ImmuneScreen from './screens/ImmuneScreen';
import LTBCScreen from './screens/LTBCScreen';
import LoginScreen from './screens/LoginScreen';
import LowfibreScreen from './screens/LowFibreScreen';
import NewCategoryScreen from './screens/NewCategoryScreen'; 
import PAPtest from './screens/PAPtest';
import PAPtest21Screen from './screens/PAPtest21Screen';
import PAPtest21_29Screen from './screens/PAPtest21_29Screen';
import PAPtest30_65Screen from './screens/PAPtest30_65Screen';
import PAPtest65Screen from './screens/PAPtest65Screen';
import PatientDetailsScreen from './screens/PatientDetailsScreen';
import PreparationPapScreen from './screens/PreparationPapScreen';
import ProcedureColScreen from './screens/ProcedureColScreen';
import ProcedurePapScreen from './screens/ProcedurePapScreen';
import Ques21Screen from './screens/Ques21Screen';
import QuestionItem from './screens/QuestionItem'; 
import QuestionScreen from './screens/QuestionScreen';
import Result1Screen from './screens/Result1Screen';
import Result2Screen from './screens/Result2Screen';
import ResultsPapScreen from './screens/ResultsPapScreen';
import RiskFactorsScreen from './screens/RiskFactorsScreen';
import SearchScreen from './screens/SearchScreen';
import SexualHistoryScreen from './screens/SexualHistoryScreen';
import SignUpScreen from './screens/SignUpScreen';
import Similar2Screen from './screens/Similar2Screen';
import Similar3Screen from './screens/Similar3Screen';
import SimilarScreen from './screens/SimilarScreen';
import SmokingScreen from './screens/SmokingScreen';
import SymptomsScreen from './screens/SymptomsScreen';
import TKMScreen from './screens/TkmScreen';
import TkmcolposcopyScreen from './screens/TkmcolposcopyScreen';
import TkmpapScreen from './screens/TkmpapScreen';
import Toolscreen from './screens/Toolscreen';
import VaginalBleeding from './screens/VaginalBleeding';
import VaginalDischarge from './screens/VaginalDischarge';
import WelcomePage from './screens/WelcomePage';


const Stack = createStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Home">
        {/* Existing screens */}
        <Stack.Screen name="Home" component={HomeScreen} options={{ headerShown: false }} />
        <Stack.Screen name="LoginScreen" component={LoginScreen} options={{ headerShown: false }} />
        <Stack.Screen name="SignUpScreen" component={SignUpScreen} options={{ headerShown: false }} />
        <Stack.Screen name="WelcomePage" component={WelcomePage} options={{ headerShown: false }} />
        <Stack.Screen name="DashboardScreen" component={DashboardScreen} options={{ headerShown: false }} />
        <Stack.Screen name="DetailsScreen" component={DetailsScreen} options={{ headerShown: false }} />
        <Stack.Screen name="PatientDetailsScreen" component={PatientDetailsScreen} options={{ headerShown: false }} />
        <Stack.Screen name="RiskFactorsScreen" component={RiskFactorsScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Toolscreen" component={Toolscreen} options={{ headerShown: false }} />
        <Stack.Screen name="SymptomsScreen" component={SymptomsScreen} options={{ headerShown: false }} />
        <Stack.Screen name="TkmScreen" component={TKMScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Age21Screen" component={Age21Screen} options={{ headerShown: false }} />
        <Stack.Screen name="AgeRFScreen" component={AgeRFScreen} options={{ headerShown: false }} />
        <Stack.Screen name="HPVScreen" component={HPVScreen} options={{ headerShown: false }} />
        <Stack.Screen name="SexualHistoryScreen" component={SexualHistoryScreen} options={{ headerShown: false }} />
        <Stack.Screen name="SmokingScreen" component={SmokingScreen} options={{ headerShown: false }} />
        <Stack.Screen name="ImmuneScreen" component={ImmuneScreen} options={{ headerShown: false }} />
        <Stack.Screen name="LTBCScreen" component={LTBCScreen} options={{ headerShown: false }} />
        <Stack.Screen name="ChlamydiaScreen" component={ChlamydiaScreen} options={{ headerShown: false }} />
        <Stack.Screen name="EconomicScreen" component={EconomicScreen} options={{ headerShown: false }} />
        <Stack.Screen name="LowfibreScreen" component={LowfibreScreen} options={{ headerShown: false }} />
        <Stack.Screen name="FamilyhistoryScreen" component={FamilyhistoryScreen} options={{ headerShown: false }} />
        <Stack.Screen name="HPVvaccineScreen" component={HPVvaccineScreen} options={{ headerShown: false }} />
        <Stack.Screen name="PAPtest" component={PAPtest} options={{ headerShown: false }} />
        <Stack.Screen name="PAPtest21" component={PAPtest21Screen} options={{ headerShown: false }} />
        <Stack.Screen name="PAPtest21_29" component={PAPtest21_29Screen} options={{ headerShown: false }} />
        <Stack.Screen name="PAPtest30_65" component={PAPtest30_65Screen} options={{ headerShown: false }} />
        <Stack.Screen name="PAPtest65" component={PAPtest65Screen} options={{ headerShown: false }} />
        <Stack.Screen name="HPVtest" component={HPVtest} options={{ headerShown: false }} />
        <Stack.Screen name="HPV16_18" component={HPV16_18Screen} options={{ headerShown: false }} />
        <Stack.Screen name="HPVgenotypes" component={HPVgenotypesScreen} options={{ headerShown: false }} />
        <Stack.Screen name="HPVNegative" component={HPVNegativeScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Tkmpap" component={TkmpapScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Tkmcolposcopy" component={TkmcolposcopyScreen} options={{ headerShown: false }} />
        <Stack.Screen name="ProcedurePap" component={ProcedurePapScreen} options={{ headerShown: false }} />
        <Stack.Screen name="PreparationPap" component={PreparationPapScreen} options={{ headerShown: false }} />
        <Stack.Screen name="ResultsPap" component={ResultsPapScreen} options={{ headerShown: false }} />
        <Stack.Screen name="ProcedureCol" component={ProcedureColScreen} options={{ headerShown: false }} />
        <Stack.Screen name="AfterCareCol" component={AfterCareColScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Ques21Screen" component={Ques21Screen} options={{ headerShown: false }} />
        <Stack.Screen name="CommonScreen" component={CommonScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Common2Screen" component={Common2Screen} options={{ headerShown: false }} />
        <Stack.Screen name="QuestionScreen" component={QuestionScreen} options={{ headerShown: false }} />
        <Stack.Screen name="QuestionItem" component={QuestionItem} options={{ headerShown: false }} />
        <Stack.Screen name="Result1Screen" component={Result1Screen} options={{ headerShown: false }} />
        <Stack.Screen name="Result2Screen" component={Result2Screen} options={{ headerShown: false }} />
        <Stack.Screen name="DocSearchScreen" component={DocSearchScreen} options={{ headerShown: false }} />
        <Stack.Screen name="DocloginScreen" component={DocloginScreen} options={{ headerShown: false }} />
        <Stack.Screen name="DocsignScreen" component={DocsignScreen} options={{ headerShown: false }} />
        <Stack.Screen name="NewCategoryScreen" component={NewCategoryScreen} options={{ headerShown: false }} />
        <Stack.Screen name="AgeLessThan21Screen" component={AgeLessThan21Screen} options={{ headerShown: false }} />
        <Stack.Screen name="AgeBetween21To34Screen" component={AgeBetween21To34Screen} options={{ headerShown: false }} />
        <Stack.Screen name="SimilarScreen" component={SimilarScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Age21to34Screen" component={Age21to34Screen} options={{ headerShown: false }} />
        <Stack.Screen name="Similar2Screen" component={Similar2Screen} options={{ headerShown: false }} />
        <Stack.Screen name="Similar3Screen" component={Similar3Screen} options={{ headerShown: false }} />
        <Stack.Screen name="Age35Screen" component={Age35Screen} options={{ headerShown: false }} />
        <Stack.Screen name="AdditionalContentScreen" component={AdditionalContentScreen} options={{ headerShown: false }} />
        <Stack.Screen name="BiopsyColScreen" component={BiopsyColScreen} options={{ headerShown: false }} />
        <Stack.Screen name="AttendedQuestionsScreen" component={AttendedQuestionsScreen} options={{ headerShown: false }} />
        <Stack.Screen name="SearchScreen" component={SearchScreen} options={{ headerShown: false }} />
        <Stack.Screen name="AgeMoreThan35" component={AgeMoreThan35} options={{ headerShown: false }} />
        <Stack.Screen name="VaginalBleeding" component={VaginalBleeding} options={{ headerShown: false }} />
        <Stack.Screen name="VaginalDischarge" component={VaginalDischarge} options={{ headerShown: false }} />


      </Stack.Navigator>
    </NavigationContainer>
  );
}

