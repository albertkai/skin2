(function(){this.JST||(this.JST={}),this.JST["backbone/apps/header/list/templates/_header"]=function(e){e||(e={});var n,a=[],t=function(e){return e&&e.ecoSafe?e:"undefined"!=typeof e&&null!=e?u(e):""},c=e.safe,u=e.escape;return n=e.safe=function(e){if(e&&e.ecoSafe)return e;("undefined"==typeof e||null==e)&&(e="");var n=new String(e);return n.ecoSafe=!0,n},u||(u=e.escape=function(e){return(""+e).replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;")}),function(){(function(){a.push("<a>"),a.push(t(this.name)),a.push("</a>\n")}).call(this)}.call(e),e.safe=c,e.escape=u,a.join("")}}).call(this);