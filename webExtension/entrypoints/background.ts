import { browser, defineBackground } from '#imports';
import { RomanshIdiomClassifier } from '@farscrl/romansh-idiom-classifier';

export default defineBackground(() => {
  const classifier = new RomanshIdiomClassifier();

  browser.runtime.onMessage.addListener(async (message: { type: string; text: string }) => {
    if (message?.type !== 'classify-language') return;
    return { label: classifier.predict(message.text) };
  });
});
