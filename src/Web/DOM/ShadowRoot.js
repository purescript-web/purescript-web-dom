"use strict";

exports._mode = function (el) {
  return el.mode;
};

exports.host = function (el) {
  return function() {
    return el.host;
  };
};
