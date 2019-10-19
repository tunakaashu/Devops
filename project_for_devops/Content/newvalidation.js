var app = angular.module('customerapp', []);

app.controller
    ('validate', function ($scope) {
        $scope.test = function (text1, text2) {

            if (isNaN(text1)) {
                if (isNaN(text2)) {
                    if (!text1) {

                        $scope.ans = null;

                        $scope.text2 = null;

                        alert("Enter the first name ");
                    }
                    else {
                        $scope.ans = text1 + " " + text2;
                    }
                }
                else {
                    $scope.ans = null;
                    $scope.text1 = null;
                    $scope.text2 = null;
                    alert("Enter valid name");
                }
            }
            else {
                $scope.ans = null;
                $scope.text1 = null;
                $scope.text2 = null;
                alert("Enter valid name");
            }

        }

        $scope.agecal = function (date) {
            // var ageDifMs = Date.now() - date.getTime();
            var ageDate = new Date(date);
            var TodayDate = new Date();
            var Diff = TodayDate.getUTCFullYear() - ageDate.getUTCFullYear();

            if (Diff > 0) {
                $scope.age = Diff;
            }
            else if (Diff === 0) {
                $scope.age = 1;
            }
            else {
                alert("Please enter valid date ");
                $scope.age = null;
            }

        }

    }

    )