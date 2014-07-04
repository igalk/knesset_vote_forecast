@IndexCtrl = ($scope) ->
  $scope.votes = [
      { title: "חוק הגנת הצרכן תיקון - פנייה מקדימה בעסקת מכר מרחוק", stage: "עברה קריאה טרומית", prediction: 80 },
      { title: "חוק המקרקעין (חיזוק בתים משותפים מפני רעידות אדמה) תיקון - סידור חלוף ארעי", stage: "הוסבה לנושא לדיון", prediction: 10 },
      { title: "חוק שכר מינימום תיקון - שכר מינימום לעובד שטרם מלאו לו 18 שנים", stage: "הוסבה לנושא לדיון", prediction: 90 },
      { title: "חוק הפסיכולוגים תיקון - הפרת חובת דיווח ופרסום החלטות ועדת המשמעת", stage: "עברה קריאה טרומית", prediction: 40 },
      { title: "חוק הביטוח הלאומי תיקון - שיעור ההטבה לפי הסכם בדבר גמלת ניידות", stage: "נפלה בקריאה טרומית", prediction: 0 },
    ]

  _.each($scope.votes, (item) ->
    item.color = if item.prediction > 50 then 'green' else 'red'
  )