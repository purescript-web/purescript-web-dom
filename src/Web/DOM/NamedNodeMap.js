"use strict";

exports.getAttributes = function (namedNodeMap) {
  return function () {
    return Array.prototype.slice.call(namedNodeMap.attributes);
  };
};

exports.getNamedItem = function (namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.getNamedItem(qualifiedName);
    };
  };
};

exports.getNamedItemNS = function (namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.getNamedItemNS(qualifiedName);
    };
  };
};

exports.setNamedItem = function (namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.setNamedItem(qualifiedName);
    };
  };
};

exports.setNamedItemNS = function (namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.setNamedItemNS(qualifiedName);
    };
  };
};

exports.removeNamedItem = function (namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.removeNamedItem(qualifiedName);
    };
  };
};

exports.removeNamedItemNS = function (namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.removeNamedItemNS(qualifiedName);
    };
  };
};
