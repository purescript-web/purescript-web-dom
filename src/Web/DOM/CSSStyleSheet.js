"use strict";

var getProp = function(name) {
  return function(sheet) {
    return sheet[name];
  };
};

exports.disabled = getProp("disabled");
exports._href = getProp("href");
exports._ownerNode = getProp("ownerNode");
exports._parentStyleSheet = getProp("parentStyleSheet");
exports._title = getProp("title");
exports._type = getProp("type");

exports.setDisabled = function(bool) {
  return function(sheet) {
    return function() {
      sheet.disabled = bool;
      return {};
    };
  };
};

exports.toggleDisabled = function(sheet) {
  return function() {
    var bool = !sheet.disabled;
    sheet.disabled = bool;
    return bool;
  };
};
