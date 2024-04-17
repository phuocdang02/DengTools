// Copyright 2018-present Network Optix, Inc. Licensed under MPL 2.0: www.mozilla.org/MPL/2.0/
import { Rule } from '../index';
import { factory } from '../logConfig';

const logging = factory.getLogger('Event Rule Manager');

/**
 * The EventRuleManager helps check if a event rule exists on the system.
 * @class
 */
export class EventRuleManager {
    /**
     * Holds a list of event rule ids from the system.
     * @type {any[]}
     */
    private systemRuleIds: string[] = [];
    /**
     * A list of event rule ids from the config file.
     * @type {{}}
     */
    private configIds: { [key: string]: string } = {};

    /**
     * Sets the rules from the config file.
     * @param {{[p: string]: string}} configRules
     * @constructor
     */
    constructor({ configRules = {} }: { configRules?: { [key: string]: string } }) {
        logging.info(JSON.stringify(configRules));
        Object.keys(configRules).forEach((comment: string) => {
            this.configIds[comment] = configRules[comment];
        });
    }

    /**
     * Checks if the rule has an id or not.
     * @param {Rule} rule
     * @return {string}
     */
    public ruleExists(rule: Rule): string {
        if (rule.ruleId !== undefined) {
            return rule.ruleId;
        }
        if (rule.comment in this.configIds &&
                this.systemRuleIds.indexOf(this.configIds[rule.comment]) > -1) {
            return this.configIds[rule.comment];
        }
        return '';
    }

    /**
     * Sets the rules from the system.
     * @param rules
     * @return {this}
     */
    public setRulesIds(rules: any) {
        this.systemRuleIds = rules.map((rule: any) => rule.id);
        return this;
    }
}
