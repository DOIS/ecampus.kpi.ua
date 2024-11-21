import { Link } from '@/i18n/routing';
import { useTranslations } from 'next-intl';
import { SupportNavLayout } from '../support-nav-layout';
import { getTranslations } from 'next-intl/server';

export async function generateMetadata({ params: { locale } }: any) {
  const t = await getTranslations({ locale, namespace: 'public.support'});

  return {
    title: t('header'),
  };
}

export default function Support() {
  const t = useTranslations('public.support');

  return (
    <SupportNavLayout header={t('header')}>
      {t.rich('content', {
        tglink: (chunks) => <Link href="https://t.me/joinchat/HtJ6IROiP8Rv5BR-eZ64fw">{chunks}</Link>,
        addresslink: (chunks) => <Link href="https://goo.gl/maps/ij4s8vuHPpLB92ZFA">{chunks}</Link>
      })}
    </SupportNavLayout>
  );
}