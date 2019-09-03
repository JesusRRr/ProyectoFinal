<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <title> INICIO </title>
    </head>
    <body>
        <!--Navegador-->
        <nav class="navbar navbar-expand-md navbar-dark bg-light fixed-top" id="top">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" width="50" alt="logo">  Centro de Salud</a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav" id="main-menu">
                        <li class="nav-item">
                            <a href="citas.jsp" class="nav-link">Citas</a>
                        </li>
                        <li class="nav-item">
                            <a href="#doctores" class="nav-link">Doctores</a>
                        </li>
                        <li class="nav-item">
                            <a href="#nutriologos" class="nav-link">Nutriológos</a>
                        </li>
                        <li class="nav-item">
                            <a href="#entrenadores" class="nav-link">Entrenadores</a>
                        </li>
                    </ul>

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a href="login.jsp" class="nav-link">Login</a>
                        </li>
                    </ul>

                </div>

            </div>
        </nav>

        <div class="container-fluid">
            <div class="espaciador"></div>
        </div>

        <!-- Carrusel -->
        <div id="slides" class="carousel slide align-items-center" data-ride = "carousel">
            <ul class="carousel-indicators">
                <li data-target="#slides" data-slide-to="0" class="active"></li>
                <li data-target="#slides" data-slide-to="1"></li>
                <li data-target="#slides" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner align-items-center">
                <div class="carousel-item active">
                    <img src="images/doctora2.jpg" class="img-fluid">
                    <div class="carousel-caption">
                        <h1 class="display-2">Centro Salud</h1>
                        <a href="register.jsp"><button type="button" class="btn btn-home btn-lg">Registrate!</button></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/nutriologo_carrucel.jpg" class="img-fluid">
                </div>
                <div class="carousel-item">
                    <img src="images/entrenador.jpg" class="img-fluid">
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="espaciador" id="despues-carrusel"></div>
        </div>

        <!-- Bienvenida -->
        <div class="container-fluid padding">
            <div class="row welcome text-center">
                <div class="col-12">
                    <h1 class="display-4">Vive más sano.</h1>
                </div>
                <hr>
                <div class="col-12">
                    <p class="lead">
                    	La responsabilidad individual solo puede tener pleno efecto si las personas tienen acceso a un modo de vida sano. Por consiguiente, en el plano social, es importante ayudar a las personas a seguir las recomendaciones, que permitan que la actividad física periódica y las opciones alimentarias más saludables estén disponibles y sean asequibles y fácilmente accesibles para todos.
                    </p>
                </div>
            </div>
        </div>

        <!-- Iconos -->
        <div class="container-fluid padding">
            <div class="row text-center padding">
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <a href="#"><i class="fa fa-heartbeat" aria-hidden="true"></i></a>
                    <h3>Médicina</h3>
                    <p>La medicina ha permitido mejoras higiénicas, investigación y el descubrimiento de nuevos fármacos y nuevas técnicas que permiten superar enfermedades viviendo más y mejor.</p>
                </div> 
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <a href="#"><i class="fa fa-apple-alt" aria-hidden="true"></i></a>
                    <h3>Nutrición</h3>
                    <p>Alimentarse bien es una de las claves para gozar de buena salud. Puede mejorar su salud al mantener una dieta equilibrada.</p>
                </div> 
                <div class="col-xs-12 col-md-4">
                    <a href="#"></a><i class="fa fa-dumbbell" aria-hidden="true"> </i></a>
                    <h3>Entrenamiento</h3>
                    <p>El ejercicio regular y la actividad física puede ayudar a: Controlar su peso, Reducir el riesgo de enfermedades y mucho más.</p>
                </div> 
            </div>
        </div>

        <!-- Misión -->
        <div class="container-fluid padding">
            <div class="row padding">
                <div class="col-lg-8 mision">
                    <h2>Nuestra misión:</h2>
                    <p>Ser un Programa Innovador que implemente paradigmas de prevención y promoción de la salud, a través de educación multidisciplinaria que impulse conductas saludables que mejoren el estilo de vida y trascienda a las siguientes generaciones.</p>
                    <br>
                </div>
                <div class="col-lg-4">
                    <img src="images/mision.jpg"class="img-fluid rounded mx-auto d-block">
                </div>
            </div>
        </div>
        <hr class="my-4">

        <!-- Doctores -->

        <div class="container-fluid padding">
            <div class="row welcome text-center">
                <div class="col-12">
                    <h1 class="display-4" id="doctores">Nuestros Doctores: </h1>
                </div>
            </div>
        </div>

        <!-- Cards -->
        <div class="container-fluid padding">
            <div class="row padding">
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/Doctor_1.jpg" alt="doctor" class="card-img-top">
                        <div class="card-body">
                            <h4 class="card-title">Dr.Rogelio Ricardo Sepúlveda Castro</h4>
                            <p class="card-text">Sangrado del Tubo Digestivo, Estreñimiento, Colecistitis, Cáncer de colon y recto, Reflujo Gastroesofágico, Enfermedades anorrectales.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/Doctora_2.jpg" alt="doctor" class="card-img-top">
                        <div class="card-body">
                            <h4 class="card-title">Dra. Linda Ileana Navarro Sánchezo</h4>
                            <p class="card-text">Cateterismo, Hipertensión arterial, Infarto/ angina de pecho, Ecocardiograma, Marcapasos, Angioplastia Stent.</p>
                       </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/doctor3.jpg" alt="doctor" class="card-img-top">
                        <div class="card-body">
                            <h4 class="card-title">Dr. Salvador Espinosa Arámbula</h4>
                            <p class="card-text">Control del Niño Sano, Vacunaciones, Evaluación del desarrollo pondero-estatural, Infecciones respiratorias agudas, Enfermedades respiratorias, Infección del tracto urinario en Pediatría.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/doctora4.jpg" alt="doctor" class="card-img-top">
                        <div class="card-body">
                            <h4 class="card-title">Dra. Carolina Torres Anguiano</h4>
                            <p class="card-text">Sangrado del Tubo Digestivo, Estreñimiento, Colecistitis, Cáncer de colon y recto, Reflujo Gastroesofágico, Enfermedades anorrectales.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/doctora5.jpg" alt="doctor" class="card-img-top">
                        <div class="card-body">
                            <h4 class="card-title">Dra. Nashielli Torres Espinosa Chiu</h4>
                            <p class="card-text">Lifting facial , Blefaroplastia, Aumento con prótesis mamarias, Liposucción o lipoaspiración, Abdominoplastia, Rinoplastia.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/doctor6.jpg" alt="doctor" class="card-img-top">
                        <div class="card-body">
                            <h4 class="card-title">Dr. Guillermo Arturo Galindo Vázquez</h4>
                            <p class="card-text">Guillermo Arturo Galindo Vázquez</h4>
                            <p class="card-text">Cirujano general. Cirugía de la obesidad, Cirugía de la vesícula biliar, Cirugía de hernia de hiato, Cirugía Gastrointestinal, Cirugía laparoscópica, Cirugía del apéndice. </p>
                       </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Nutriológos -->

        <div class="container-fluid padding">
                <div class="row welcome text-center">
                    <div class="col-12" id="nutriologos">
                        <h1 class="display-4">Nuestros Nutriológos: </h1>
                    </div>
                </div>
            </div>
    
            <!-- Cards -->
            <div class="container-fluid padding">
                <div class="row padding">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/Nutriologa1.jpg" alt="nutriologa" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Mariana Morales Mondragon</h4>
                                <p class="card-text">Congreso de Obesidad Infantil, UNIVA, 2009. Diplomado de Actualización en Nutrición, UNIVA, 2010. Licenciatura Nutrición Clínica y Deportiva, UNIVA, 2012.</p>
                           </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/Nutriologa2.jpg" alt="nutriologa" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Óscar Martínez López</h4>
                                <p class="card-text">nutricion deportiva, colegio medico jalisciense de nutricion clinica, 2015. Diplomado en Nutricion Clínica Avanzada, Instituto de Posgrados y ciencias, 2008. Psiconutrición, CAITA, 2015.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/nutriologa3.jpg" alt="nutriologa" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Lucía Martínez</h4>
                                <p class="card-text">Española, graduada en Nutrición Humana y Dietética. Experta en el diagnóstico y tratamiento de la obesidad infantil. Especialista en nutrición vegetariana y vegana. Autora de los libros “Cocina Vegana” y “Vegetarianos  Con-ciencia”.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/Nutriologo4.jpg" alt="nutriologa" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Enrique Prieto Arroyo</h4>
                                <p class="card-text">Licenciado en Nutrición y Ciencia de los Alimentos con subsistema en nutrición clínica, Universidad Iberoamericana Ciudad de México, 2008. Miembro de la American Academy of Anti-Aging Medicine, American Academy of Anti Aging Medicine, American Board of Anti Aging and Regenerative Medicine, 2016.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/Nutriologa5.jpg" alt="nutriologa" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">María del Pilar Pére Fernández</h4>
                                <p class="card-text">Egresada de la licenciatura en nutrición de la Universidad Iberoamericana. En 2004 cambió su residencia a Vevey, en el sureste de Suiza, para trabajar en las oficinas centrales de la compañía como vicepresidenta para Latinoamérica.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/Nutriologo6.jpg" alt="nutriologa" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Ricardo Gonzáles Torres</h4>
                                <p class="card-text">Participación en Congreso Nacional de Nutrición y Ciencias del deporte, Guadalajara, 2017. Licenciatura en Nutricion, Universidad de Guadalajara, 2015. Diplomado en actualización del síndrome de obesidad, UAG, 2016.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <!-- Entrenadores -->

        <div class="container-fluid padding">
                <div class="row welcome text-center">
                    <div class="col-12">
                        <h1 class="display-4" id="entrenadores">Nuestros Entrenadores: </h1>
                    </div>
                </div>
            </div>
    
            <!-- Cards -->
            <div class="container-fluid padding">
                <div class="row padding">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/Entrenador1.jpg" alt="entrenador" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Joan Ruano</h4>
                                <p class="card-text">A los 4 años de edad me inició con la natación y años más tarde con las artes marciales, y como complemento de éstas para adquirir más fuerza y potencia comenzó a entrenar con pesas.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/Entrenador_2.jpg" alt="entrenador" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Kai Greene</h4>
                                <p class="card-text">Las impresionantes coreografías hizo que ganara en el año 2010 y 2009, New York Pro y Australia Pro Grand Prix, en Mr. Olimpya del 2009 ocupo el 4 lugar.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/entrenador3.jpg" alt="entrenador" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Santiago Solari</h4>
                                <p class="card-text">En 2000 es traspasado al Real Madrid, en el que permaneció cinco temporadas (2000-2005), en las que logró dos Ligas, dos Supercopas de España, una Liga de Campeones, una Supercopa de Europa y una Copa Intercontinental.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/entrenadora4.jpg" alt="entrenador" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Marta Tejedor</h4>
                                <p class="card-text">Entre 2007 y 2011 fue entrenadora de la Selección femenina de fútbol de Chile. En su calidad de instructora de fútbol femenino por la FIFA ha sido asesora en países como Guinea Ecuatorial, Rusia e Israel.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/Entrenadora5.jpg" alt="entrenador" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Houriya Al Taheri</h4>
                                <p class="card-text">(Dubai, 1986) visitó España para participar con el Abu Dhabi Team en LaLiga Promises. La FIFA la ha fichado como experta, siendo la primera mujer árabe en ocupar ese puesto.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="images/entrenadora6.jpg" alt="entrenador" class="card-img-top">
                            <div class="card-body">
                                <h4 class="card-title">Patrizia Panico</h4>
                                <p class="card-text">La primera mujer entrenadora de fútbol de un equipo masculino italiano. La entrenadora lidera el equipo sub-16 en dos amistosos contra Alemania.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    

        <!-- Nuestra Visión -->
            <div class="container-fluid padding">
                <div class="row padding">
                    <div class="col-lg-6">
                        <h2>Nuestra Visión:</h2>
                        <p>Ser un programa de Salud consolidado y permanente que brinde atención de calidad a las personas sin importar su ciudadania, rasgos etnicos o economia, promoviendo la salud a través de la prevención e implatanción de un modelo de vida saludabe teniente a disminuir el riesgo de enfermedades crónico degeneratias y elevar el nivel de calidad de vida de los individuos, tanto nivel nacional como internacional</p>
                        <br>
                    </div>
                    <div class="col-lg-6">
                        <img src="images/bg-gente.jpg" alt="gente-feliz" class="img-fluid">
                    </div>
                </div>
                <hr class="my-4">
            </div>


        <!-- Redes Sociales -->
            <div class="container-fluid padding">
                <div class="row text-center padding">
                    <div class="col-12">
                        <h2>Conectate</h2>
                    </div>
                    <div class="col-12 social padding">
                        <a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                        <a href="#"><i class="fab fa-youtube" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>

        <!-- Footer -->
        <footer>
            <div class="container-fluid padding">
                <div class="row text-center">
                    <div class="col-md-4">
                        <hr class = "light">
                        <h5>Contacto</h5>
                        <hr class="light">
                        <p>Número de telefono:  (331) 097 7580</p>
                        <p>Email:  aplicacion@salud.com</p>
                        <p>Domicilio:  Av. Adolfo López Mateos Sur 2077, Jardines Plaza del Sol, 44510 Guadalajara, Jal.</p>
                    </div>
                    <div class="col-md-4">
                        <hr class="light">
                        <h5>Horario</h5>
                        <hr class="light">
                        <p>Lunes a Viernes:  7:00 a 18:00 hrs</p>
                        <p>Sábado:  8:00 a 15:00 hrs</p>
                        <p>Domingo: Cerrado</p>
                    </div>
                    <div class="col-md-4">
                        <hr class="light">
                        <h5>Sucursales</h5>
                        <hr class="light">
                        <p>IJALTI:  Av. Adolfo López Mateos Sur 2077, Jardines Plaza del Sol, 44510 Guadalajara, Jal.</p>
                        <p>Ciudad Creativa Digital:  Zona Centro, 44100 Guadalajara, Jal.</p>
                    </div>
                    <div class="col-12">
                        <hr class="light">
                        <h5>&copy; Generation</h5>
                    </div>
                </div>
            </div>
        </footer>


    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
    <script src="https://kit.fontawesome.com/1967fff348.js"></script>

</html>