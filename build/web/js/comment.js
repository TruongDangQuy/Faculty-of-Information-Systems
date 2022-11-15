//$(document).ready(function () {
//  
//
//$("#btncomment").click(function (e){
//     e.preventDefault();
//     window.alert
//     ("Đăng bình luận thành công");
//    $.ajax({
//                    url : "InsertCommentServlet",
//                    type : "post",
//                    dataType:"html",
//                    data : {Email:$("#Email").text(),MaBaiViet:$("#MaBaiViet").text(),
//                        NoiDung:$("#txtcomment").val()},
//                         
//                    
//                    success : function (result){
//                       
//                    }
//                });
//    })
//});

$(document).ready(function(){ 
    
//    $("#load").load ("jQuery.html");
    $(".primaryContained").on('click', function(){
    $(".comment").addClass("commentClicked");
//    $.ajax({
//                    url : "CommentServlet",
//                    type : "get",
//                    dataType:"html",
//                    data : {Email:$("#Email").text(),MaBaiViet:$("#MaBaiViet").text(),
//                        NoiDung:$("#txtcomment").val()},
//                    
//                         
//                    
//                    success : function (){
//                       
//                     
//                    }
//                });
  });//end click
  $("textarea").on('keyup.enter', function(){
    $(".comment").addClass("commentClicked");
//    $.ajax({
//                    url : "CommentServlet",
//                    type : "get",
//                    dataType:"html",
//                    data : {Email:$("#Email").text(),MaBaiViet:$("#MaBaiViet").text(),
//                        NoiDung:$("#txtcomment").val()},
//                    
//                         
//                    
//                    success : function (){
//                       
//                     
//                    }
//                });
  });//end keyup
  $("span").on('keyup.enter', function(){
    $(".comment").addClass("commentClicked");
    });
    $("p").on('keyup.enter', function(){
    $(".comment").addClass("commentClicked");
    });
  });//End Function

new Vue({
    el: "#app",
    data:{
      title: 'Add a comment',
      newItem: '',
      secondItem:$("#Email").text(),
      timeStamp: '',
      item: [] 
      
    },
    methods:{
        showDatestamp: function () {
             return new Date().toLocaleDateString(); 
             
          },
          showTimestamp: function () {
             
             return new Date().toLocaleTimeString();
          },
//          mounted: function () {
//          this.timeStamp = this.showTimestamp();
//        },
      addItem(){     
      this.item.push(this.secondItem);
      this.secondItem = $("#Email").text();     
      this.item.push(this.timeStamp);
      this.timeStamp=this.showDatestamp();
//      this.timeStamp= $(".timeStamp").text();
//      this.timeStamp=$("timeStamp").text();
      this.item.push(this.newItem);
      this.newItem = "";      
      $.ajax({
                    url : "InsertCommentServlet",
                    type : "post",
                    dataType:"html",
                    data : {Email:$("#Email").text(),MaBaiViet:$("#MaBaiViet").text(),
                        NoiDung:$("#txtcomment").val()},
                    
                         
                    
                    success : function (){
//                        console.log(json)
//                       $(".items").append(json);
//                       $("#Email");
//                       $("#Email").text();
//                       $("#NoiDung").val("");
//                       console.log(json);
//                       arrDT=json.data;
//                       $.each(json.data,function(index){
//                           $("#Email").append();
//                       });
                    }
                });
       
      }
  }

  });
  





