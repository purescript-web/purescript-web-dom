"use strict";

exports.add = function(list) {
  return function(token) {
    return function() {
      return list.add(token);
    };
  };
};

exports.remove = function(list) {
  return function(token) {
    return function() {
      return list.remove(token);
    };
  };
};

exports.contains = function(list) {
  return function(token) {
    return function() {
      return list.contains(token);
    };
  };
};

exports.toggle = function(list) {
  return function(token) {
    return function() {
      return list.toggle(token);
    };
  };
};

exports._item = function(list) {
  return function(index) {
    return function() {
      return list.item(index);
    };
  };
};

exports.replace = function(list) {
  return function(token) {
    return function(newToken) {
      return function() {
        return list.replace(token, newToken);
      };
    };
  };
};

exports.supports = function(list) {
  return function(token) {
    return function() {
      return list.supports(token);
    };
  };
};

exports.tokens = function (domTokenList) {
  return function () {
    var tokens = [];
    var tokens_length = domTokenList.length;

    for (var i = 0; i < tokens_length; i++) {
      tokens.push(domTokenList.item(i));
    }

    return tokens;
  };
};

exports.setValue = function(list) {
  return function(token) {
    return function() {
      return list.setValue(token);
    };
  };
};

exports.getValue = function(list) {
  return function() {
    return list.getValue();
  };
};
