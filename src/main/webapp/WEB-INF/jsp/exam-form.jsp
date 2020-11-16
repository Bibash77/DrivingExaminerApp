<jsp:include page="header.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: Bibash Bogati
  Date: 11/11/2020
  Time: 8:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
           background-color: beige;
        }
    </style>
</head>
<body>
<div class="">
    <input value="${userId}" id="userId" hidden>
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="../../../resources/img/img_1.png" alt="" width="72" height="72">
        <h2>Driving Exam form</h2>
        <p class="lead">Below is a question list of driving exam. please Select one correct answer</p>
    </div>

    <div class="row" style="padding-left: 100px; background-color: white">
        <div class="col-md-3 order-md-2 mb-4">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Correct Answers</span>
                <span class="badge badge-secondary badge-pill">3</span>
            </h4>
            <ul class="list-group mb-3" style="display: none" id="correct-answer">
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.1</span>
                        <small class="text-muted"></small>
                    </div>
                    <h6 class="text-muted">(c).ministry of transport</h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.2</span>
                    </div>
                    <h6 class="text-muted">(d) by using brake</h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.3</span>
                    </div>
                    <h6 class="text-muted">(c) To get the vehicle slow </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.4</span>
                    </div>
                    <h6 class="text-muted">(a) full tank  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.5</span>
                    </div>
                    <h6 class="text-muted">(c) Written exam and trial </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.6</span>
                    </div>
                    <h6 class="text-muted">(d) Distillated water  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.7</span>
                    </div>
                    <h6 class="text-muted">(d) All the above  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.8</span>
                    </div>
                    <h6 class="text-muted">(a) Private tempo </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.9</span>
                    </div>
                    <h6 class="text-muted">(b) Self starter </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.10</span>
                    </div>
                    <h6 class="text-muted">(b) Stop and ready to go  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.11</span>
                    </div>
                    <h6 class="text-muted">(d) All above </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.12</span>
                    </div>
                    <h6 class="text-muted">(d) Two rear wheel  </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.13</span>
                    </div>
                    <h6 class="text-muted">(d) Side light on left   </h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.14</span>
                    </div>
                    <h6 class="text-muted">(d) dept. of transport management</h6>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <span class="my-0">Qno.15</span>
                    </div>
                    <h6 class="text-muted">(d) Suitable gear </h6>
                </li>
            </ul>

                <li class="list-group-item d-flex justify-content-between" id="no-answer">
                    <span>N/A</span>
                    <strong>Answers aren't available</strong>
                </li>
        </div>

        <div class="col-md-9" style="border: double; overflow: scroll">
            <h4 class="mb-3 text-center p-0">Driving Exam</h4>
                <div class="row mb-2">
                    <div class="col-md-12 mb-3">
                        <label >1.Motor and Transport Management is under which ministry?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input  id="ministryOfLabourTransport" name="paymentMethod" type="radio" class="custom-control-input" value="a. Construction and ministry of transport" required>
                                <label class="custom-control-label d-inline-flex" for="ministryOfLabourTransport">
                                    a. Construction and ministry of transport
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  name="paymentMethod" type="radio" value=" b.Ministry of labour and transport management" class="custom-control-input" id="ministryOfLabour">
                                <label class="custom-control-label d-inline-flex" for="ministryOfLabour">
                                    b.Ministry of labour and transport management
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  name="paymentMethod" type="radio" class="custom-control-input" value="c.ministry of transport" required id="ministryOfTransport">
                                <label class="custom-control-label d-inline-flex" for="ministryOfTransport" >
                                    c.ministry of transport
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  name="paymentMethod" type="radio" class="custom-control-input" id="allAnswer" value="d. all of the above">
                                <label class="custom-control-label d-inline-flex" for="allAnswer">
                                    d. all of the above  ( ans : no c )
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >2. How do you start your vehicle ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="checkFuel" name="vehicleStart" type="radio" class="custom-control-input" value=" a. By checking fuel" required>
                                <label class="custom-control-label d-inline-flex" for="checkFuel">
                                    a. By checking fuel
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="checkingGear" name="vehicleStart" type="radio" value="b. By checking gear" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="checkingGear">
                                    b. By checking gear
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="usingBreak" name="vehicleStart" value="c. By using brake" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="usingBreak">
                                    c. By using brake
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allAbove" name="vehicleStart" type="radio" class="custom-control-input" value="d. All of the above">
                                <label class="custom-control-label d-inline-flex" for="allAbove">
                                    d. All of the above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>3.What is the job of brake?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="stopVehicle" name="brakeJob" type="radio" class="custom-control-input" value="a.To stop the vehicle" required>
                                <label class="custom-control-label d-inline-flex" for="stopVehicle">
                                    a.To stop the vehicle
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="toLight" name="brakeJob" type="radio" value="b.To light" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="toLight">
                                    b.To light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="slowDown" name="brakeJob" type="radio" class="custom-control-input" value="c. To get the vehicle slow">
                                <label class="custom-control-label d-inline-flex" for="slowDown">
                                    c. To get the vehicle slow
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="speedVehicle" value="d. To speed up the vehicle." name="brakeJob" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="speedVehicle">
                                    d. To speed up the vehicle.
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>4.How much fuel should be kept on the vehicle ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="full" name="fuelQuantity" type="radio" class="custom-control-input" value="a. Full tank" required>
                                <label class="custom-control-label d-inline-flex" for="full">
                                    a. Full tank
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="half" name="fuelQuantity" type="radio" value="b. Half tank" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="half">
                                    b. Half tank
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="any" name="fuelQuantity" type="radio" value="c. How much we like" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="any">
                                    c. How much we like
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allAboves" name="fuelQuantity" type="radio" class="custom-control-input" value="d. All the above" required>
                                <label class="custom-control-label d-inline-flex" for="allAboves">
                                    d. All the above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>5.Which exam needs to be passed for taking driving liscense ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="written" name="exam" type="radio" class="custom-control-input" value="a. Written" required>
                                <label class="custom-control-label d-inline-flex" for="written">
                                    a. Written
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="trial" name="exam" type="radio" value="b. Trial" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="trial">
                                    b. Trial
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="writtenTrial" name="exam" value="c. Written exam and trial" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="writtenTrial">
                                    c. Written exam and trial
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allExam" name="exam" value="d. All above " type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="allExam">
                                    d. All above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >6. What should be put when the level of acid in battery goes down ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="water" name="acidLevel" type="radio" class="custom-control-input" value="a. Water" required>
                                <label class="custom-control-label d-inline-flex" for="water">
                                    a. Water
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="kerosene" name="acidLevel" type="radio" value="B. kerosene" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="kerosene">
                                    B. kerosene
                                </label>
                            </div>
                            <div  class="custom-control custom-radio">
                                <input id="petrol" name="acidLevel" value="c. petrol" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="petrol">
                                    c. petrol
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="distillated" name="acidLevel" value="d. Distillated water" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="distillated">
                                    d. Distillated water
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >7. What is needed while applying for the driving license .</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input  id="fixed" name="licenseApplyMethod" type="radio" class="custom-control-input" value="a. fixed fee" required>
                                <label class="custom-control-label d-inline-flex" for="fixed">
                                    a. Fixed fee
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="passportPhoto" name="licenseApplyMethod" type="radio" value="b. three passport sized photo" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="passportPhoto">
                                    b. Three passport sized photo
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="medicalCertificate" name="licenseApplyMethod" value="c. medical certificate" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="medicalCertificate">
                                    c. Medical certificate
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allLicenseApplyMethod" name="licenseApplyMethod" value="d. All the above" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="allLicenseApplyMethod">
                                    d. All the above ( ans no d )
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >8.which vehicle is ba 1 sa ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input  id="tempo" name="vehicleNumberForm" type="radio" class="custom-control-input" value="a. Private tempo" required>
                                <label class="custom-control-label d-inline-flex" for="tempo">
                                    a. Private tempo
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="motorcycle" name="vehicleNumberForm" type="radio" value="b. Private motorcycle" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="motorcycle">
                                    b. Private motorcycle
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="car" name="vehicleNumberForm" type="radio" class="custom-control-input" value="c. Private car" required>
                                <label class="custom-control-label d-inline-flex" for="car">
                                    c. Private car
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="microbus" name="vehicleNumberForm" type="radio" class="custom-control-input" value="d. private microbus" required>
                                <label class="custom-control-label d-inline-flex" for="microbus">
                                    d. private microbus
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>9. By what is battery charged ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="selfDynamo" name="batteryCharger" type="radio" class="custom-control-input" value="a. Self dynamo" required>
                                <label class="custom-control-label d-inline-flex" for="selfDynamo">
                                    a. Self dynamo
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="starter" name="batteryCharger" type="radio" value="b. Self starter" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="starter">
                                    b. Self starter
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="chargingDynamo" name="batteryCharger" value="c. Charging dynamo" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="chargingDynamo">
                                    c. Charging dynamo
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="allCharge" name="batteryCharger" value="d. All above" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="allCharge">
                                    d. All above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >10. What does a yellow light indicate ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="stop" name="yellowLightSignal" type="radio" class="custom-control-input" value="a. To stop" required>
                                <label class="custom-control-label d-inline-flex" for="stop">
                                    a. To stop
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="goLight" name="yellowLightSignal" type="radio" value="b. To go on the light" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="goLight">
                                    b. To go on the light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input  id="readyGo" value="c. Stop and ready to go" name="yellowLightSignal" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="readyGo">
                                    c. Stop and ready to go
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="noMeaning" value="d. No meaning" name="yellowLightSignal" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="noMeaning">
                                    d. No meaning
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>11. What shouldn’t we take while driving ?</label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="drugs" name="avoidThing" type="radio" class="custom-control-input" value="a. drugs" required>
                                <label class="custom-control-label d-inline-flex" for="drugs">
                                    a. Drugs
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="cigarette" name="avoidThing" type="radio" value="b. cigarette" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="cigarette">
                                    b. Cigarette
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="alcohol" name="avoidThing" value="c. alcohol" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="alcohol">
                                    c. Alcohol
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="allNotTake" value="d. all above" name="avoidThing" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="allNotTake">
                                    d. All above
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>12.Which wheel is affected by hand brake .

                        </label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="allWheel" name="handBreakAffect" type="radio" class="custom-control-input" value="a. All the wheel" required>
                                <label class="custom-control-label d-inline-flex" for="allWheel">
                                    a. All the wheel
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="twoWheel" name="handBreakAffect" type="radio" value="b. Two rear wheel" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="twoWheel">
                                    b. Two rear wheel
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="twoFront" value="c. Two front" name="handBreakAffect" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="twoFront">
                                    c. Two front
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="nonWheel" value="d. non of the wheel" name="handBreakAffect" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="nonWheel">
                                    d. non of the wheel
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>13 . Which signal is used to stop the moving vehicle ?

                        </label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="headLight" name="stopSignal" type="radio" class="custom-control-input" value="a.	Head light" required>
                                <label class="custom-control-label d-inline-flex" for="headLight">
                                    a.	Head light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="brakeLight" name="stopSignal" type="radio" value="b.	Brake light" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="brakeLight">
                                    b.	Brake light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="emergencyLight" name="stopSignal" value="c. Emergency light" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="emergencyLight">
                                    c.	Emergency light
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="sideLight" value="d.	Side light on left" name="stopSignal" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="sideLight">
                                    d.	Side light on left
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label >14 . Who has the authority of  cancelling driving license ?

                        </label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="trafficPolice" name="authorityOfCancel" type="radio" class="custom-control-input" value="a. Traffic police" required>
                                <label class="custom-control-label d-inline-flex" for="trafficPolice">
                                    a.	Traffic police
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="policeStation" name="authorityOfCancel" type="radio" value="b. police station" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="policeStation">
                                    b.	Police station
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="transportManagement" value="c. transport management office" name="authorityOfCancel" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="transportManagement">
                                    c.	Transport management office
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="dept" name="authorityOfCancel" value="d. Dept of transport management" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="dept">
                                    d.  Dept of transport management
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12 mb-3">
                        <label>

                            15 . which gear should be used  while overtaking ?

                        </label>
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="first" name="overtakingGear" type="radio" class="custom-control-input" value="a.	First" required>
                                <label class="custom-control-label d-inline-flex" for="first">
                                    a.	First
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="second"  name="overtakingGear" type="radio" value="b. Second" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="second">
                                    b.	Second
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="third" value="c.	Third" name="overtakingGear" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="third">
                                    c.	Third
                                </label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="suitable" value="d.	Suitable gear" name="overtakingGear" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label d-inline-flex" for="suitable">
                                    d.	Suitable gear
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <button class="float-right btn btn-primary" id="submitButton" onclick="onSubmit()">Submit</button>
                    </div>
                </div>
        </div>
    </div>
</div>

</body>
<script>
    // dynamic list of element name
    const ids = [
        'paymentMethod',
        'vehicleStart',
        'brakeJob',
        'fuelQuantity',
        'exam',
        'acidLevel',
        'licenseApplyMethod',
        'vehicleNumberForm',
        'batteryCharger',
        'yellowLightSignal',
        'avoidThing',
        'handBreakAffect',
        'stopSignal',
        'authorityOfCancel',
        'overtakingGear'
    ];

    // select value if exam is already taken
    $(document).ready(function () {
    const userId = document.getElementById("userId").value;
        $.ajax({
            url:"${pageContext.request.contextPath}/answer/"+userId,
            type:"get",
            contentType:"application/json",
            success:function(data){
                console.log(data);
                if(data == null){
                  alert("no previous exam taken !!");
                    document.getElementById("no-answer").style.display = "block";

              } else {
                  const answers = JSON.parse(data.userAnswers);
                   ids.forEach(dataKey => {
                       const ele = document.getElementsByName(dataKey);
                       for(let i = 0; i < ele.length; i++) {
                           if(ele[i].value === answers[dataKey])
                              ele[i].checked = true;
                       }
                   })
                    document.getElementById("submitButton").style.display = "none";
                    document.getElementById("correct-answer").style.display = "block";
                    document.getElementById("no-answer").style.display = "none";
              }
            },

        });
    })

    // submit question modal
    const answerModal = {
        userAnswers: undefined,
        userId: undefined
    };

    // submit question data
    function onSubmit() {
        let isFormValid = true;
        const data = {};
        ids.forEach(dataKey => {
            const ele = document.getElementsByName(dataKey);
            let value = null;
            for(let i = 0; i < ele.length; i++) {
                if(ele[i].checked)
                    value = ele[i].value;
            }
            console.log(value , typeof value);
            if(value != null) {
                data[dataKey] = value.toString();
            } else {
                isFormValid = false;
            }
        })
        if(!isFormValid){
            alert("please fill all answer");
            return;
        }
        console.log(data);
        answerModal.userAnswers = JSON.stringify(data);
        answerModal.userId = document.getElementById("userId").value;
        saveAnswers(answerModal);
    }

    function saveAnswers(answer){
        console.log(answer);
        $.ajax({
            url:"${pageContext.request.contextPath}/answer/submit",
            type:"post",
            contentType:"application/json",
            data:JSON.stringify(answer),
            success:function(data){
                console.log(data);
                alert(data);
            },

        });
    }
</script>
</html>
