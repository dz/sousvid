window.SOUSVID = window.SOUSVID || {};

(function($){
  var Editor = (function() {
    var create = function(elem, schema) {
      var $elem = $(elem);
      var editor = new JSONEditor($elem.get(0), {
        schema: schema
      });
    };

    return {
      create: create
    };
  })();

  window.SOUSVID.Editor = Editor;
})(jQuery)
