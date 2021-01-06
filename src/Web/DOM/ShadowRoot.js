"use strict";

exports._attachShadow = function(props) {
  return function (el) {
    return function() {
      return el.attachShadow(props);
    };
  };
};

exports._mode = function (el) {
  return el.mode;
};

exports.host = function (el) {
  return function() {
    return el.host;
  };
};
