<!DOCTYPE html>
<html>
<head>
    <title>ColdFusion Structure Example</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
    <link rel="stylesheet" type="text/css" href="./styles/jquery-ui.css">
    <script src="./scripts/jquery.min.js"></script>
    <script src="./scripts/jquery-ui.min.js"></script>
    <script src="./scripts/q23.js"></script>
</head>
<body>

    <div class="container">

        <div class="dataFeilds">

            <div class="logo">
                <img src="./assets/logo.png" alt="logo">
            </div>
<!---form start--->
            <form action="components/q23.cfc?method=uploadData" method="POST">
                <div class="empApplication">
                    <h2>Employement Application</h2>
                    <p>Infinity Box Inc.
                </div>
                <div id="hiddenError">
                    <h3>There was a problem with your submission.</h3>
                    <p>Errors have been <span class="highlight"><b>highlighted</b></span> below</p>
                </div>
                <div class="position" id="pos">
                    <div class="posImpStar">
                        <div class ="selectOption">
                            <label class="impTxt" for="positionSelect">Which position are you applying for?</label>
                            <select name="positionSelect" id="positionSelect" class="choosePos">
                                <option value=""></option>
                                <option value="Interface Designer">Interface Designer</option>
                                <option value="Software Engineer">Software Engineer</option>
                                <option value="System Administrator">System Administrator</option>
                                <option value="Office Manager">Office Manager</option>
                            </select>
                        </div>
                        
                        <div class="impStar">
                            <p class="imp">&nbsp;*</p>
                        </div>
                    </div>                 
                    <p id="impTxtHidden" style="display: none;">This field is required. Please enter a value.</p>
                </div>


                <div class="relocate">
                    <p>Are you willing to relocate? <span class="imp">*</span></p>
                    <div class="radio">
                        <div class="radioInput">
                            <input type="radio" id="yes" name="yes" value="Yes" checked="checked">
                            <label for="yes">Yes</label>
                        </div>
                        <div class="radioInput">
                            <input type="radio" id="no" name="yes" value="No">
                            <label for="no">No</label>
                        </div>
                        <p id="radioTxtHidden">This field is required. Please enter a value.</p>
                    </div>
                </div>

                <div class="calender" id="cal">
                    <p>When can you start? <span class="imp">*</span></p>
                    <div class="calInput dateContainer" >
                        <div class="inputs">
                            <input type="text" class="field text dateInputOne" id="inputFieldTwo" maxlength="2" >
                            <p>MM</p>
                        </div>
                        <p>/</p>
                        <div class="inputs">
                            <input type="text" class="field text dateInputOne" id="day" maxlength="2">
                            <p>DD</p>
                        </div>
                        <p>/</p>
                        <div class="inputs inputss">
                            <input type="text"  class="field text dateInputTwo" id="datepicker" maxlength="4">
                            <p>YYYY</p>
                        </div>
                    </div>
                    <p id="calTxtHidden">This field is required. Please enter a value.</p>
                </div>

                <div class="port" id="pFolio">
                    <p>Portfolio Web Site</p>
                    <input type="text" value="http://" id="urls"> 
                    <p id="portTxtHidden">This field is required. Please enter a value.</p>
                </div>
                <div class="attach">
                    <p>Attach a Copy of Your Resume</p>
                    <div class="attachInputFeilds">
                        <input type="file"  value="Choose File">
                        
                    </div>
                    <p class="wordOrDoc">Word or PDF Documents Only</p>
                </div>
                <div class="salary" id="sal">
                    <p>Salary Requirements</p>
                    <div class="salaryInput">
                        <p class="dollar">$</p>
                        <div class="salaryText">
                            <input type="text" id="dol">
                            <p>Dollars</p>
                        </div>
                        <p>.</p>
                        <div class="salaryTexts">
                            <input type="text" maxlength="2" id="cents">
                            <p>Cents</p>
                        </div>
                    </div>
                </div>
                <div class="contactInfo" id="cInfo">
                    <h3>Your Contact Information</h3>
                    <div class="fullName">
                        <p>Name<span class="imp">*</span></p>   
                        <div class="firstLast">                        
                            <div class="names">
                                <input type="text" id="fname">
                                <p class="fLnameText">First</p>
                            </div>
                            <div class="names namess">
                                <input type="text" id="lname">
                                <p class="fLnameText">Last</p>
                            </div>
                        </div>
                        <p id="nameTxtHidden">This field is required. Please enter a value.</p>
                    </div>    
                </div>
                <div class="email" id="mailE">
                    <p>Email Address<span class="imp">*</span></p>
                    <div class="emailNames">
                        <input type="text" id="email">
                    </div>
                    <p id="mailTxtHidden" style="display: none;">This field is required. Please enter a value.</p>
                </div>
                <div class="phone" id="phNum">
                    <p>Phone<span class="imp">*</span></p>
                    <div class="phoneInput">
                        <div class="inputsValues">
                            <input type="text" id="n0" class="authInput" maxlength="3"   data-next="1">
                            <p>###</p>
                        </div>
                        <p>-</p>
                        <div class="inputsValues">
                            <input type="text" id="n1" class="authInput" maxlength="3"  data-next="2">
                            <p>###</p>
                        </div>
                        <p>-</p>
                        <div class="inputsValues inputssValues">
                            <input type="text" id="n2" class="authInput" maxlength="4"  data-next="3">  
                            <p>####</p>
                        </div>
                    </div>
                    <p id="phTxtHidden">This field is required. Please enter a value.</p>
                </div>


                <div class="button">
                    <button type="button" name="submit" id="submitBtn">Register</button>
                </div>
                <div class="footerText">
                    <p>This site is protected by reCAPTCHA Enterprise and the Google <a href="privacy">Privacy Policy</a> and <a href="terms">Terms of Service</a> apply.</p>
                </div>
            </form>
<!---form end --->
        </div>
        <div class="footer">
            <img src="./assets/logo2.png" alt="logo">
            <p class="logo2Text">See how easy it is to <a href="privacy">create a form</a></p>
        </div>
    </div>
     
</body>
</html>