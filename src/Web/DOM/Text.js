"use strict";

exports.splitText = function (offset) {
  return function (t) {
    return function () {
      return t.splitText(offset);
    };
  };
};

exports.wholeText = function (t) {
  return function () {
    return t.wholeText;
  };
};
