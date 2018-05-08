"use strict";

exports.data_ = function (t) {
  return function () {
    return t.data;
  };
};

exports.length = function (t) {
  return function () {
    return t.length;
  };
};

exports.substringData = function (offset) {
  return function (count) {
    return function (cd) {
      return function () {
        cd.substringData(offset, count);
      };
    };
  };
};

exports.appendData = function (data) {
  return function (cd) {
    return function () {
      cd.appendData(data);
    };
  };
};

exports.insertData = function (offset) {
  return function (data) {
    return function (cd) {
      return function () {
        cd.insertData(offset, data);
      };
    };
  };
};

exports.deleteData = function (offset) {
  return function (count) {
    return function (cd) {
      return function () {
        cd.deleteData(offset, count);
      };
    };
  };
};

exports.replaceData = function (offset) {
  return function (count) {
    return function (data) {
      return function (cd) {
        return function () {
          cd.replaceData(offset, count, data);
        };
      };
    };
  };
};
