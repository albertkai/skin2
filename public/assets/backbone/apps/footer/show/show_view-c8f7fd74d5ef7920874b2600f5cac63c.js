(function(){var t={}.hasOwnProperty,o=function(o,e){function r(){this.constructor=o}for(var n in e)t.call(e,n)&&(o[n]=e[n]);return r.prototype=e.prototype,o.prototype=new r,o.__super__=e.prototype,o};this.Skin.module("FooterApp.Show",function(t,e,r,n,p){var s;return t.Footer=function(t){function e(){return s=e.__super__.constructor.apply(this,arguments)}return o(e,t),e.prototype.template="footer/show/templates/show_footer",e.prototype.className="c-centered",e.prototype.onBeforeRender=function(){return p(this.el).addClass("_start")},e.prototype.onRender=function(){var t=this;return setTimeout(function(){return p(t.el).removeClass("_start")},0)},e}(n.ItemView)})}).call(this);