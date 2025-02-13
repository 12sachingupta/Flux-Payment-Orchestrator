import { Payment, Workflow } from "./types";

/**
 * Process a payment.
 * @param payment - The payment details.
 * @returns A confirmation message.
 */
export function processPayment(payment: Payment): string {
  // Dummy implementation
  return `Processed payment of ${payment.amount} ${payment.currency}`;
}

/**
 * Run a workflow.
 * @param workflow - The workflow details.
 * @returns A status message.
 */
export function runWorkflow(workflow: Workflow): string {
  return `Running workflow with steps: ${workflow.steps.join(", ")}`;
}

// Example usage (can be removed or adapted as needed)
if (require.main === module) {
  const payment: Payment = { id: 1, amount: 100, currency: "USD" };
  console.log(processPayment(payment));

  const workflow: Workflow = { steps: ["validate", "process", "complete"] };
  console.log(runWorkflow(workflow));
}
