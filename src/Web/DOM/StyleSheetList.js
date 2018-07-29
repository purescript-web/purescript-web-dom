"use strict";

exports.length = function (list) {
  return function () {
    return list.length;
  };
};

exports.toArray = function (list) {
  return function () {
    return Array.prototype.slice.call(list);
  };
};

exports._item = function(index) {
  return function(list) {
    return function() {
      return list.item(index);
    };
  };
};
