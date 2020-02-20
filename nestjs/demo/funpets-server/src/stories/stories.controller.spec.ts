import { Test, TestingModule } from '@nestjs/testing';
import { StoriesController } from './stories.controller';
import { AzureStorageService } from '@nestjs/azure-storage';
import { getRepositoryToken } from '@nestjs/azure-database';
import { Story } from './story.entity';

jest.mock('@nestjs/azure-storage', () => ({
  // Use Jest automatic mock generation
  ...jest.genMockFromModule('@nestjs/azure-storage'),

  // Interceptor mock needs to be done manually
  AzureStorageFileInterceptor: jest.fn(() => ({
    intercept: (context, next) => next.handle(),
  })),
}));

const repositoryMock = jest.genMockFromModule<any>('@nestjs/azure-database')
  .AzureTableStorageRepository;

describe('Stories Controller', () => {
  let controller: StoriesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [StoriesController],
      providers: [
        AzureStorageService,
        { provide: getRepositoryToken(Story), useValue: repositoryMock },
      ],
    }).compile();

    controller = module.get<StoriesController>(StoriesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
