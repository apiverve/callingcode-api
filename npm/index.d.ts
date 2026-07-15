declare module '@apiverve/callingcode' {
  export interface callingcodeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface callingcodeResponse {
    status: string;
    error: string | null;
    data: CountryCallingCodeData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CountryCallingCodeData {
      country:      null | string;
      officialName: null | string;
      countryCode:  null | string;
      callingcodes: (null | string)[];
      region:       null | string;
      subregion:    null | string;
  }

  export default class callingcodeWrapper {
    constructor(options: callingcodeOptions);

    execute(callback: (error: any, data: callingcodeResponse | null) => void): Promise<callingcodeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: callingcodeResponse | null) => void): Promise<callingcodeResponse>;
    execute(query?: Record<string, any>): Promise<callingcodeResponse>;
  }
}
