'use strict';

/**
 * @ngdoc function
 * @name ecampusApp.controller:AdminCtrl
 * @description
 * # AdminCtrl
 * Controller of the ecampusApp
 */
angular.module('ecampusApp')
  .controller('AdminCtrl', function ($scope, $cookies, $window, Api) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  //    CommonJS
      var bodyPosition;

      $(window).on('load',function() {

        if($(".nPPBody").offset()){
          bodyPosition = $(".nPPBody").offset().top;
          $("a[href='#top']").mPageScroll2id();
        }
        if (!!Campus.getToken()) {
          var sClaim = decodeToken(Campus.getToken());

          if (!!sClaim) {
            sClaim = JSON.parse(sClaim);
            $(".userName").append(JSON.parse(sClaim.prof).FullName);
          }
        }

        $(".loader_inner").fadeOut();
        $(".loader").delay(400).fadeOut("slow");
        $('.login-message').click(function() {
          $('.login-message').addClass('hidden');
        })

      });

      $(document).ready(function() {
        $(".loader_inner").fadeOut();
        $(".loader").delay(400).fadeOut("slow");
        if (!!document.querySelector("#authorized") && !Campus.getToken()) {
          history.back();
        }
        if (!document.querySelector("#authorized")) {
          Campus.logout();
        }
      });

      function decodeToken(accessTokenIn) {

        if (!accessTokenIn || accessTokenIn == 'null') {
          return null;
        }

        var a = accessTokenIn.split(".");
        var uHeader = b64utoutf8(a[0]);
        var uClaim = b64utoutf8(a[1]);

        var pHeader = KJUR.jws.JWS.readSafeJSONString(uHeader);
        var pClaim = KJUR.jws.JWS.readSafeJSONString(uClaim);

        var sHeader = JSON.stringify(pHeader, null, "  ");
        var sClaim = JSON.stringify(pClaim, null, "  ");

        return sClaim;
      }

      function getParent(obj, parentTagName) {
        return (obj.tagName == parentTagName) ? obj : getParent(obj.parentNode, parentTagName);
      }

      function setRadioBtnForCathedras(responsive){
        var subdivisionId = responsive.Subdivision.SubdivisionId;
        var subdivisionName = responsive.Subdivision.Name;
        if (document.getElementById(subdivisionId + "") == null && ~subdivisionName.indexOf("Кафедра")) {
          //console.log("adm");
          $('.radioMenu .radioBtnWrapper').append('<input class="radioBtn" id="' + subdivisionId + '" name="cathedra" type="radio" value=' + subdivisionId + ' onchange="check()">' +
              '<label for="' + subdivisionId + '" class="side-label">' + subdivisionName + '</label>');
        }
      }

      function setSubdivisionDetails() {
        var sClaim = decodeToken(Campus.getToken());
        sClaim = JSON.parse(sClaim);
        if(typeof(sClaim.resp)=="object"){
          sClaim.resp.forEach(function(itemForEach, i, arr) {
            var itemForEachJSON = JSON.parse(itemForEach);
            if(itemForEachJSON.Subsystem==1){
              setRadioBtnForCathedras(itemForEachJSON);
            }

          });
        }else{
          if(typeof(sClaim.resp)=="string"){
            var responsive  = JSON.parse(sClaim.resp);
            if(responsive.Subsystem==1){
              setRadioBtnForCathedras(responsive);
            }
          }
        }

      }

      function setFacultyAndInstitute(){
        var kpiQuery= false;
        var sClaim = decodeToken(Campus.getToken());
        sClaim = JSON.parse(sClaim);
        if(typeof(sClaim.resp)=="object"){
          sClaim.resp.forEach(function(itemForEach, i, arr) {
            kpiQuery = setFacultyAndInstituteLogic(itemForEach,kpiQuery);
          });
        }else{
          if(typeof(sClaim.resp)=="string"){
            kpiQuery = setFacultyAndInstituteLogic(sClaim.resp,kpiQuery);
          }
        }

      }

      function setFacultyAndInstituteLogic(item,kpiQuery){
        var itemForEachJSON = JSON.parse(item);
        if(itemForEachJSON.Subsystem==1) {
          var subdivisionId = itemForEachJSON.Subdivision.SubdivisionId;
          var subdivisionName = itemForEachJSON.Subdivision.Name;
          //console.log(subdivisionId +" -"+subdivisionName);
          if (subdivisionId == 9998 && !kpiQuery) {
            kpiQuery = true;
            var pathFaculty = "Subdivision";
            Campus.execute("GET", pathFaculty).then(function (response) {
              //console.log(response);
              response.forEach(function (itemForEach, i, arr) {
                if (itemForEach.typeId == 26 || itemForEach.typeId == 77) {
                  var subdivisionName = itemForEach.name;
                  var subdivisionId = itemForEach.subdivisionId;
                  $(".chosen-select").append('<option id="' + subdivisionId + '" value="' + subdivisionId + '">' + subdivisionName + '</option>');
                }
              });
              var config = {
                '.chosen-select': {},
                '.chosen-select-deselect': {allow_single_deselect: true},
                '.chosen-select-no-single': {disable_search_threshold: 10},
                '.chosen-select-no-results': {no_results_text: 'Співпадінь не знайдено...'},
                '.chosen-select-width': {width: "95%"}
              };
              for (var selector in config) {
                $(selector).chosen(config[selector]);
              }
              $('.chosen-select').on('change', function (evt, params) {
                var parentId = this.value;
                var subdivisionPath = "Subdivision/" + parentId + "/children";
                Campus.execute("GET", subdivisionPath).then(function (response) {
                  $('.radioMenu .radioBtnWrapper').empty();
                  $('.radioMenu .radioBtnWrapper').append('<label class="topLabel">Оберіть кафедру</label>');
                  response.forEach(function (itemForEach, i, arr) {
                    if (arr[i + 1] != undefined) {
                      var cathedraId = itemForEach.id;
                      var cathedraName = itemForEach.name;
                      //console.log(itemForEach);
                      $('.radioMenu .radioBtnWrapper').append('<input class="radioBtn" id="' + cathedraId + '" name="cathedra" type="radio" value=' + cathedraId + ' onchange="check()">' +
                          '<label for="' + cathedraId + '" class="side-label">Кафедра ' + cathedraName + '</label>');
                    }
                  })
                });
              });
              $(".loader_inner").fadeOut();
              $(".loaderQuery").delay(400).fadeOut("slow");
            });
          }
          if (document.getElementById(subdivisionId + "") == null &&
              (~subdivisionName.indexOf("факультет") || ~subdivisionName.indexOf("Факультет")
              || ~subdivisionName.indexOf("інститут") || ~subdivisionName.indexOf("Інститут"))) {
            $(".chosen-select").append('<option id="' + subdivisionId + '" value="' + subdivisionId + '">' + subdivisionName + '</option>');
          }
        }
        return kpiQuery;
      }

      $("#loginBtn").click(function() {
        $(".loader_inner").fadeIn();
        $(".loader").fadeIn("slow");
        var login = $("#main_content_placeholder_login").val();
        var password = $("#main_content_placeholder_password").val();
        Campus.auth(login, password).then(function(token) {
          if (!token) {
            $('.login-message').removeClass('hidden');
          } else {
            $(".loader_inner").fadeOut();
            $(".loader").delay(400).fadeOut("slow");
            $(location).attr('href', 'initAdmin.html');
          }
        });
        $(".loader_inner").fadeOut();
        $(".loader").fadeOut("slow");


      });

      $(window).scroll(function(){
        if($(window).scrollTop()>100){
          $(".scroll-to-top-Btn").fadeIn(300);
        } else {
          $(".scroll-to-top-Btn").fadeOut(300);
        }
        //if(bodyPosition && $(window).scrollTop()>bodyPosition){
        //  $(".nPPBody").removeClass('container');
        //} else {
        //  $(".nPPBody").addClass('container');
        //}
      });
  //    ---
  //    Permission Checker
      $(window).ready(function() {
        var permissionArray = getPermissionArrayFromToken();
        if(permissionArray != undefined){
          var myRequest = new XMLHttpRequest();
          myRequest.open('GET',"json/DcSubsystem.json",true);
          myRequest.send(null);
          myRequest.onreadystatechange = function(){
            if(myRequest.readyState === 4 ){
              var myData = JSON.parse(myRequest.responseText);
              //console.log(permissionArray);
              permissionArray.forEach(function(responsibilityItemNumber,i,arr){
                var currentSubsistem = myData[responsibilityItemNumber];
                if(currentSubsistem!= undefined && currentSubsistem.Enabled == "true"){

                  $('.initButtonsWrapper .row')
                      .append(getInitAdminItem(new SubsistemItem(currentSubsistem.NameForWeb,currentSubsistem.PageOrUrl,currentSubsistem.Icon)));
                }

              })
            }

          }
        }

      });
      function SubsistemItem (nameForWeb,pageOrUrl,icon){
        this.nameForWeb =   nameForWeb;
        this.pageOrUrl  =   pageOrUrl;
        this.icon       =   icon;
      }
      function getPermissionArrayFromToken(){
        var permissionArray = [];
        var permissionArryCounter = 0;
        if (!!Campus.getToken()) {
          var sClaim = decodeToken(Campus.getToken());
          sClaim = JSON.parse(sClaim);
          if(typeof(sClaim.resp)=="object"){
            sClaim.resp.forEach(function(itemForEach, i, arr) {
              var itemForEachJSON = JSON.parse(itemForEach);
              if(!~permissionArray.indexOf(itemForEachJSON.Subsystem)){
                permissionArray.push(itemForEachJSON.Subsystem);
              }
            });
          }else{
            if(typeof(sClaim.resp)=="string"){
              var responsive  = JSON.parse(sClaim.resp);
              if(!~permissionArray.indexOf(responsive.Subsystem)){
                permissionArray.push(responsive.Subsystem);
              }
            }
          }
        }else {
          return undefined;
        }
        return permissionArray;
      }

      function getInitAdminItem(subsistemItem){
        var iconString =  ~subsistemItem.icon.indexOf("glyphicon")?'<span class="glyphicon '+subsistemItem.icon+' fa-3x" aria-hidden="true"></span>':
        '<i class="fa '+subsistemItem.icon+' fa-3x"></i>';
        return '' +
            '<div class="col-md-4">' +
            '<a href="'+subsistemItem.pageOrUrl+'">' +
            '<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 initButtons">' +
            iconString+
            '<p>'+subsistemItem.nameForWeb+'</p>' +
            '</div>' +
            '</a>' +
            '</div>'


      }
  //    ---
  });
