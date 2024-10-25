class Config {
  // Define the IP and base URL
  static const String ip = "192.168.101.26"; // Define IP with port
  static const String baseUrl = "http://$ip/php"; // Define base URL using the IP

  // Define API endpoints
  static const String login = "$baseUrl/userlogin.php"; // Login endpoint
  static const String signup = "$baseUrl/patient.php"; // Signup endpoint
  static const String doclog = "$baseUrl/doctorlogin.php"; // Doctor login endpoint
  static const String docsign = "$baseUrl/doctorprofile.php"; // Doctor signup endpoint
  static const String answerquestions = "$baseUrl/answerquestions1.php"; // Answer questions endpoint
  static String getCategoryUrl(String category) => "$baseUrl/age21.php?category=$category"; // Get category URL
  static String getPatientDetailsUrl(String username) => "$baseUrl/patientdetails.php?username=$username"; // Get patient details URL
  static const String age21to34 = "$baseUrl/age21bw35.php"; // Age 21 to 34 endpoint
  static String attend(String username) => "$baseUrl/docques.php?username=$username"; // Attend endpoint for username
  static const String search = "$baseUrl/doctorsearch.php"; // Doctor search endpoint
  static const String time = "$baseUrl/time.php"; // Time endpoint

// You can add more properties or methods if necessary
}
