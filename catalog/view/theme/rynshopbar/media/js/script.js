(function($){'use strict'

var app={dropdown:function(){$('.drop-nav-arrow').on('click',function(){if(!$(this).parent().hasClass('open')){$(this).parent().addClass('open');$(this).parent().find('> .drop-nav').slideDown();}else{$(this).parent().removeClass('open');$(this).parent().find('> .drop-nav').slideUp();}});}}
$(document).ready(function(){'use strict'
$(".menu-icon a").on('click',function(e){if($(this).hasClass('open')){$(this).removeClass('open');$('.menu-nav-main').removeClass('open');}else{$(this).addClass('open');$('.menu-nav-main').addClass('open');}return false;});$('.menu-icon a').on('click',function(){$('body').toggleClass('hidden-body');});$('.category-icon-menu .hambarger-icon').on('click',function(){$('.category-icon > ul').slideToggle();$(this).toggleClass('open');return false;});$('.language-change').on('click',function(){$('.language-menu ul').slideToggle();});$(".price-textbox input").keydown(function(e){if($.inArray(e.keyCode,[46,8,9,27,13,110,190])!==-1||(e.keyCode===65&&(e.ctrlKey===true||e.metaKey===true))||(e.keyCode>=35&&e.keyCode<=40)){return;}if((e.shiftKey||(e.keyCode<48||e.keyCode>57))&&(e.keyCode<96||e.keyCode>105)){e.preventDefault();}});});$(window).load(function(){initComponents();$('.menu-nav-main ul li').each(function(){if($(this).find('.drop-nav').length){$(this).append('<span class="drop-nav-arrow"><i class="fa fa-angle-down"></i></span>')}});app.dropdown();$('#pre-loader').delay(1000).fadeOut();headerFix();});$(window).resize(function(){initComponents();});function initComponents(){initBg();}function initBg(){$('.Banner-Bg').each(function(){var background=$(this).data('background');$(this).css('background-image','url("'+background+'")');});}$('.top-arrow').on('click',function(){$("html, body").animate({scrollTop:0},600);return false;});$(window).on('scroll',function(){headerFix();if($(this).scrollTop()>500){$('.top-arrow').fadeIn();}else{$('.top-arrow').fadeOut();}return false;});jQuery.fn.progressBar=function(options){var defaults={height:"6",backgroundColor:"#eae7de",barColor:"#bc9540",percentage:true,shadow:false,border:false,animation:false,animateTarget:false,};var settings=$.extend({},defaults,options);return this.each(function(){var elem=$(this);$.fn.replaceProgressBar(elem,settings);});};$.fn.replaceProgressBar=function(item,settings){var skill=item.text();var progress=item.data('width');var target=item.data('target');var bar_classes=' ';var animation_class='';var bar_styles='background-color:'+settings.backgroundColor+';height:'+settings.height+'px;';if(settings.shadow){bar_classes+='shadow';}if(settings.border){bar_classes+=' border';}if(settings.animation){animation_class=' animate';}var overlay='<div class="sonny_progressbar'+animation_class+'" data-width="'+progress+'">';overlay+='<p class="title">'+skill+'</p>';overlay+='<div class="bar-container'+bar_classes+'" style="'+bar_styles+'">';overlay+='<span class="backgroundBar"></span>';if(target){if(settings.animateTarget){overlay+='<span class="targetBar loader" style="width:'+target+'%;background-color:'+settings.targetBarColor+';"></span>';}else{overlay+='<span class="targetBar" style="width:'+target+'%;background-color:'+settings.targetBarColor+';"></span>';}}if(settings.animation){overlay+='<span class="bar" style="background-color:'+settings.barColor+';"></span>';}else{overlay+='<span class="bar" style="width:'+progress+'%;background-color:'+settings.barColor+';"></span>';}if(settings.percentage){overlay+='<span class="progress-percent" style="line-height:'+settings.height+'px;">'+progress+'%</span>';}overlay+='</div></div>';$(item).replaceWith(overlay);};var animate=function(){var doc_height=$(window).height();$('.sonny_progressbar.animate').each(function(){var position=$(this).offset().top;if(($(window).scrollTop()+doc_height-60)>position){var progress=$(this).data('width')+"%";$(this).removeClass('animate');$(this).find('.bar').css('opacity','0.1');$(this).find('.bar').animate({width:progress,opacity:1},3000);}});};$(window).scroll(function(){if($('.sonny_progressbar.animate').length<1){return;}animate();});$('.progressbar1').progressBar({shadow:true,percentage:false,animation:true,});function headerFix(){var window_height=$(window).height(),document_height=$(document).height(),topPos=$(document).scrollTop(),header_height=$('header-part').height();if(topPos>header_height){if((window_height<document_height)&&$('.header-part').hasClass('sticky')){$('.header-part').addClass('sticky-fixed');}}else{$('.header-part').removeClass('sticky-fixed');}}})(jQuery);$(document).on('ready',function(){if($('.map-outer').length>0){$('#map').height($(window).height());}else{$('#map').height('600px');}var map;function initialize(){var myCenter=new google.maps.LatLng(40.7127837,-74.00594130000002);var mapProp={center:myCenter,zoom:11,scrollwheel:false,mapTypeId:google.maps.MapTypeId.ROADMAP,styles:[{"featureType":"administrative.locality","elementType":"labels","stylers":[{"visibility":"on"}]},{"featureType":"administrative.locality","elementType":"labels.text.fill","stylers":[{"color":"#000000"},{"visibility":"on"}]},{"featureType":"administrative.locality","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"weight":"0.75"}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ded7c6"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ded7c6"}]},{"featureType":"road","elementType":"geometry","stylers":[{"lightness":100},{"visibility":"simplified"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"visibility":"on"},{"lightness":700}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#c3a866"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"off"}]}]};var map=new google.maps.Map(document.getElementById("map"),mapProp);var marker=new google.maps.Marker({position:myCenter,icon:'images/map_marker.png'});marker.setMap(map);if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)){map.setOptions({'draggable':false});}}if(document.getElementById('map')!=null){google.maps.event.addDomListener(window,'load',initialize);}$(".alert-container").hide();$("form[name='contact-form']").on('submit',function(e){e.preventDefault();var url="functions.php";var thisForm=$(this);var btnValue=$(this).find(".send_message").attr('value');$(this).find(".send_message").attr('value','SUBMITTING...');$(this).find(".send_message").attr('disabled','disabled');$.ajax({type:"POST",url:url,data:thisForm.serialize(),success:function(data){$(".alert-container").html(data);$(".alert-container").show();thisForm.trigger("reset");thisForm.find(".send_message").attr('value',btnValue);thisForm.find(".send_message").removeAttr('disabled');$(".alert .close").on('click',function(){$(".alert-container").hide();});}});return false;});});