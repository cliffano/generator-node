"use strict";
import Display from '{{project_id}}';

const display = new Display('{{project_id}}.yaml');
const text = display.format(false, 'lower');
console.log(text);
