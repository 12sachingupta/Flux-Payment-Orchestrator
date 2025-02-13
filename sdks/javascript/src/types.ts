// Define basic types for the JavaScript SDK.

export interface Payment {
    id: number;
    amount: number;
    currency: string;
  }
  
  export interface Workflow {
    steps: string[];
  }
  