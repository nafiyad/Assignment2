import { render, screen } from '@testing-library/react';
import App from './App';

test('renders header with correct text', () => {
  render(<App />);
  const headerElement = screen.getByText(/Nafiyad Adane - Assignment 2/i);
  expect(headerElement).toBeInTheDocument();
});
