<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EClinic.Views.Guest.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medical Clinic Template</title>
    <link rel="stylesheet" href="../../Libs/bootstrap-5.3.3-dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../CSS/Home.css" />
</head>
<body>

    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="Home.aspx">As-Shifa</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="Doctors.aspx">Doctors</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Laboratorian.aspx">Laboratorian</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Receptionist.aspx">Receptionist</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact Us</a>
                        </li>
                    </ul>
                    <a href="#" class="btn btn-primary">Sign Up</a>
                    <a href="../Login.aspx" class="btn btn-primary">Login</a>
                </div>
            </div>
        </nav>

        <!-- Hero Section -->
        <div class="hero-section">
            <div class="overlay">
                <div class="content">
                    <h1>Your Health, Our Top Priority</h1>
                    <h1>Always Here to Serve and Care for You.</h1>
                    <pre>This Website has been created in 2024 where I have developed a user-friendly and responsive website for a hospital, 
                        designed to provide patients with easy access to healthcare services, information, and support.</pre>
                    <a href="#" class="btn btn-primary">Book an Appointment</a>
                </div>
            </div>
        </div>

        <!-- Services Section -->
        <div class="services-section container">
            <div class="row">
                <div class="col-md-3">
                    <div class="service-box">
                        <i class="icon-hospital"></i>
                        <h3>Newest Technologies</h3>
                        <p>At our hospital, we stay at the forefront of medical advancements by incorporating the latest technologies. From state-of-the-art diagnostic equipment to innovative treatment methods, we ensure our patients receive the most effective and cutting-edge care.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service-box">
                        <i class="icon-doctor"></i>
                        <h3>Experienced Doctors</h3>
                        <p>Our team of highly skilled and experienced doctors is dedicated to providing exceptional medical care. With years of expertise in their respective fields, they offer personalized treatment plans tailored to each patient’s unique needs.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service-box">
                        <i class="icon-customer"></i>
                        <h3>High Customer Satisfaction</h3>
                        <p>We pride ourselves on delivering top-notch healthcare services that prioritize patient satisfaction. Our commitment to excellence ensures that every patient receives compassionate care, clear communication, and a positive experience from start to finish.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service-box">
                        <i class="icon-pharma"></i>
                        <h3>Pharma Pipeline</h3>
                        <p>Our hospital is actively involved in the development of new pharmaceutical solutions. Through our robust pharma pipeline, we are committed to bringing the latest and most effective medications to our patients, contributing to better health outcomes.</p>
                    </div>
                </div>
            </div>
        </div>




    </div>

    <!-- Include Bootstrap JS -->
    <script src="../../Libs/bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
