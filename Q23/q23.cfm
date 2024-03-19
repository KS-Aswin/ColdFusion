
<cfapplication name="MyApplication" sessionmanagement="true">

<!DOCTYPE html>
<html>
<head>
    <title>ColdFusion Structure Example</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>

    <div class="container">

        <div class="dataFeilds">

            <div class="logo">
                <img src="./assets/logo.png" alt="logo">
            </div>
            <div class="empApplication">
                <h2>Employement Application</h2>
                <p>Infinity Box Inc.
            </div>
            <div class="hiddenError">
                <h3>There was a problem with your submission.</h3>
                <p>Errors have been <span class="highlight">highlighted</span> below</p>
            </div>
            <div class="position">
                    <label class="impTxt">
                        Which position are you applying for? *
                        <input list="browsers" name="myBrowser" class="choosePos"/>
                    </label>
                    <datalist id="browsers">
                        <option value=" ">
                        <option value="Interface Designer">
                        <option value="Software Engineer">
                        <option value="System Administrator">
                        <option value="Office Manager">
                    </datalist>
                    <p class="impTxtHidden">This field is required. Please enter a value.</p>
            </div>
            <div class="relocate">
                <p><b>Are you willing to relocate? <span class="imp">*</span>
                <div class="radio">
                    <input type="radio" id="yes" name="yes" value="Yes">
                    <label for="yes">Yes</label>
                    <input type="radio" id="no" name="no" value="No">
                    <label for="no">No</label>
                </div>
            </div>
            
        </div>

    </div>

</body>
</html>
