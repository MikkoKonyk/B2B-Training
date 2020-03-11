//
// Theme driven uiProperties overrides.  If you want to override elements
// of uiProperties within this file then
// 1) Uncomment the code between //OVERRIDES START HERE and
//                               //OVERRIDES END HERE
// 2) Define the specific property(ies) that you wish to
//    override from the managed package.
//
// Note that you must override according to the full object path
// but you can only override specific values, i.e. you do not need
// to provide the whole object copy.
//
// OVERRIDES START HERE
// CCRZ.uiProperties = $.extend(true,CCRZ.uiProperties,{
//     //Overriden partial objects here
// });

// jQuery(function($) {
//     // override to display handlebars ID if cclogToken is present
//     CCRZ.util.template = function(id) {
//         var source = $('#' + id).html();
//         preSource = "<div class='internalHB'>"+id+" ("+findUIProperty(CCRZ.uiProperties,id).join(";")+")</div>";
//         source	=((CCRZ.getCookie("apex__cclgtkn")!="")?"<div class='cc_hb'>"+preSource+ source + "</div>":source) ;
//         return Handlebars.compile(source);
//     }
//     // finds what is the CCRZ.uiproperty for the value passed:
//     findUIProperty = function(uiPropertyArray,strToFind){
//         let arrKeys = Object.keys(uiPropertyArray);
//         var uiTest = false;
//         var uiArray = [];
//         var regex;
//         for (uiKey of arrKeys){
//             uiTest = false;
//             replaceThis='(("tmpl":"'+strToFind+'"))';
//             regex = new RegExp(replaceThis, 'g');
//             uiTest=JSON.stringify(uiPropertyArray[uiKey]).match(regex);
//             if (uiTest) {
//                 uiArray.push(uiKey)
//             }
//         }
//         return uiArray;
//     }
// });
// OVERRIDES END HERE